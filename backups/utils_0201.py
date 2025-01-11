import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

import shap

from sklearn.preprocessing import StandardScaler

from sklearn.model_selection import train_test_split, StratifiedKFold

from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from xgboost import XGBClassifier
from sklearn.svm import SVC
from sklearn.neighbors import KNeighborsClassifier

from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score
from sklearn.metrics import matthews_corrcoef, mean_absolute_error, mean_squared_error

from lifelines import CoxPHFitter

from imblearn.over_sampling import SMOTE

from aif360.datasets import BinaryLabelDataset
from aif360.metrics import BinaryLabelDatasetMetric, ClassificationMetric


# Define global parameters
random_state = 42  # To enable reproducibility
neighbors = 5  # Number of neighbors in K-NN classifier


# Compute different metrics of our baseline model
def assess_baseline(X, y, nan_input=False, random_state=random_state):
    # Perform stratified train-test split
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, stratify=y, random_state=random_state)

    # If input contains NaNs we shall use XGBoost, otherwise we stick with the much simpler 1-Nearest Neighbors
    if nan_input:
        model = XGBClassifier(random_state=random_state, enable_categorical=True, eval_metric='logloss')
    else:
        model = get_model("K-Nearest Neighbors", neighbors=1)
    model.fit(X_train, y_train)
    
    # Predict and evaluate
    y_pred = model.predict(X_test)
    acc = accuracy_score(y_test, y_pred)
    pre = precision_score(y_test, y_pred)
    rec = recall_score(y_test, y_pred)
    f1 = f1_score(y_test, y_pred)
    mcc = matthews_corrcoef(y_test, y_pred)
    
    results = ["Baseline", acc, pre, rec, f1, mcc]
    
    return pd.DataFrame([results], columns=["Model", "Accuracy", "Precision", "Recall", "F1-Score", "MCC"])

    
# Return the indicated model
def get_model(model_name, random_state=random_state, neighbors=neighbors):
    models = {
    "Logistic Regression": LogisticRegression(random_state=random_state),
    "Decision Tree": DecisionTreeClassifier(random_state=random_state),
    "Random Forest": RandomForestClassifier(random_state=random_state),
    "XGBoost": XGBClassifier(random_state=random_state, use_label_encoder=False, eval_metric='logloss'),
    "SVM": SVC(random_state=random_state, probability=True),
    "K-Nearest Neighbors": KNeighborsClassifier(n_neighbors=neighbors)
    }
    
    return models[model_name]


# Compute the different metrics of a model using a 5-Fold Cross-Validation
def compute_metrics(model_name, X, y, balance=False, random_state=random_state):   
    # Metric storage
    accuracies = []
    precisions = []
    recalls = []
    f1_scores = []
    mcc_scores = []  # Matthews Correlation Coefficient
    
    # Initialize StratifiedKFold with 5 splits
    skf = StratifiedKFold(n_splits=5, shuffle=True, random_state=random_state)
    
    # Perform Stratified 5-Fold Cross-Validation
    for train_index, test_index in skf.split(X, y):
        # Split the data
        X_train, X_test = X.iloc[train_index], X.iloc[test_index]
        y_train, y_test = y.iloc[train_index], y.iloc[test_index]
        
        # Scale data to increase robustness
        X_train = StandardScaler().fit_transform(X_train)
        X_test = StandardScaler().fit_transform(X_test)

        # Apply SMOTE to the training data to balance classes
        if balance:
            X_train, y_train = SMOTE(random_state=random_state).fit_resample(X_train, y_train)

        # Train the model
        model = get_model(model_name)
        model.fit(X_train, y_train)

        # Predict and evaluate
        y_pred = model.predict(X_test)
        accuracies.append(accuracy_score(y_test, y_pred))
        precisions.append(precision_score(y_test, y_pred))
        recalls.append(recall_score(y_test, y_pred))
        f1_scores.append(f1_score(y_test, y_pred))
        mcc_scores.append(matthews_corrcoef(y_test, y_pred))
        
    # Compute average metrics
    acc = np.mean(accuracies)
    pre = np.mean(precisions)
    rec = np.mean(recalls)
    f1 = np.mean(f1_scores)
    mcc = np.mean(mcc_scores)
    
    return acc, pre, rec, f1, mcc


# Compute all defined metrics for the listed models and return a summary DataFrame
def compare_models(data, labels, target, balance=False):
    # List to store results
    results = []

    # List models
    model_names = ["Logistic Regression", "Decision Tree", "Random Forest", "XGBoost", "SVM", "K-Nearest Neighbors"]

    # Compute metrics for each model
    for name in model_names:
        metrics = compute_metrics(name, data, labels[target], balance)
        results.append([name, *metrics])
        
    # Return the summary table as a DataFrame
    return pd.DataFrame(results, columns=["Model", "Accuracy", "Precision", "Recall", "F1-Score", "MCC"])


# Predict the lifetime of an event
def predict_lifetime(data, labels, duration, event):
    # Scale the data
    scaled_data = StandardScaler().fit_transform(data)
    
    # Convert the scaled data (NumPy array) back into a DataFrame
    scaled_data_df = pd.DataFrame(scaled_data, columns=data.columns)
    
    # Add duration time and event to the DataFrame
    merged_data = pd.concat([scaled_data_df, labels[duration], labels[event]], axis=1)
    
    # Compute fit the model and compute prediction
    cph = CoxPHFitter()
    cph.fit(merged_data, duration_col=duration, event_col=event)
    pred_time = cph.predict_expectation(merged_data)
    
    # Filter only for instances where the event happened
    event_occurred_mask = labels[event] == 1
    filtered_actual_times = labels[duration][event_occurred_mask]
    filtered_predicted_times = pred_time[event_occurred_mask]
    
    # Compute and print metrics for filtered data
    mae = mean_absolute_error(filtered_actual_times, filtered_predicted_times)
    rmse = np.sqrt(mean_squared_error(filtered_actual_times, filtered_predicted_times))
    print(f"Mean Absolute Error (MAE) for instances where event occurred: {mae}")
    print(f"Root Mean Squared Error (RMSE) for instances where event occurred: {rmse}")
    
    # Scatter plot of predicted vs actual survival times (only for events that occurred)
    plt.figure(figsize=(8, 6))
    plt.scatter(filtered_actual_times, filtered_predicted_times, color='blue', alpha=0.5)
    plt.plot([0, max(filtered_actual_times)], [0, max(filtered_predicted_times)], color='red', linestyle='--')
    plt.xlabel('Actual Survival Time (Event Occurred)')
    plt.ylabel('Predicted Survival Time (Event Occurred)')
    plt.title('Actual vs Predicted Survival Time (Event Occurred)')
    plt.show()

          
# Plot the SHAP values of a given model to see the most relevant features
def plot_shap_values(model_name, data, labels, target, samples=50, random_state=random_state):
    # Define X and y for better reading of the next line
    X, y = data, labels[target]
    
    # Perform stratified train-test split
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, stratify=y, random_state=random_state)

    # Scale data to increase robustness
    X_train = StandardScaler().fit_transform(X_train)
    X_test = StandardScaler().fit_transform(X_test)

    # Convert back to DataFrame to retain column names for the plot
    X_train = pd.DataFrame(X_train, columns=X.columns)
    X_test = pd.DataFrame(X_test, columns=X.columns)
    
    # Train the model
    model = get_model(model_name)
    model.fit(X_train, y_train)

    # Use different explainers depending on the model, for kernel explainer we reduce samples for performance reasons
    if model_name in ["Logistic Regression", "SVM", "K-Nearest Neighbors"]:
        # Reduce computation time
        X_train = shap.sample(X_train, samples)
        explainer = shap.KernelExplainer(model.predict_proba, X_train)
    else:
        explainer = shap.TreeExplainer(model)
    shap_values = explainer.shap_values(X_test)

    # Plot SHAP summary plot
    print(f"Plotting SHAP values for predicting {target} using {model_name}...")
    plt.figure(figsize=(12, 8))
    shap.summary_plot(shap_values, X_test)
    plt.show()


# Compute fairness metrics for a protected attribute using a given model to predict
def compute_fairness_metrics(model_name, data, labels, target, protected, priv, unpriv, random_state=random_state):
    # Define privileged and unprivileged groups
    privileged_groups = priv
    unprivileged_groups = unpriv

    # Define X and y for better reading
    X, y = data, labels[target]

    # Create a BinaryLabelDataset for real samples
    real_data = pd.concat([X, y], axis=1)
    real_dataset = BinaryLabelDataset(df=real_data, label_names=[target], protected_attribute_names=[protected])

    # Fairness metrics for real data
    data_metric = BinaryLabelDatasetMetric(real_dataset, privileged_groups=privileged_groups, unprivileged_groups=unprivileged_groups)
    SPDBP = data_metric.statistical_parity_difference()
    DIBP = data_metric.disparate_impact()
    
    # Split data into train and test sets
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, stratify=y, random_state=random_state)

    # Train a simple Random Forest model (example)
    model = get_model(model_name)
    model.fit(X_train, y_train)

    # Generate predictions
    y_pred = model.predict(X_test)

    # Create a BinaryLabelDataset for real samples
    test_data = pd.concat([X_test, pd.Series(y_test, index=X_test.index, name=target)], axis=1)
    test_dataset = BinaryLabelDataset(df=test_data, label_names=[target], protected_attribute_names=[protected])

    # Create a BinaryLabelDataset for the predictions
    predicted_data = pd.concat([X_test, pd.Series(y_pred, index=X_test.index, name=target)], axis=1)
    predicted_dataset = BinaryLabelDataset(df=predicted_data, label_names=[target], protected_attribute_names=[protected])

    # Fairness metrics after prediction
    classification_metric = ClassificationMetric(test_dataset, predicted_dataset,
                                                 privileged_groups=privileged_groups, unprivileged_groups=unprivileged_groups)

    # Store metrics
    SPDAP = classification_metric.statistical_parity_difference()
    DIAP = classification_metric.disparate_impact()
    EOD = classification_metric.equal_opportunity_difference()

    return SPDBP, DIBP, SPDAP, DIAP, EOD


# Return a DataFrame which summarizes the fairness metrics of a model at predicting the target column
def fairness_study(model_name, data, labels, target, protected, priv_groups, unpriv_groups, random_state=random_state):
    # Initialize a list to store the computed metrics
    results = []

    # Compute metrics for each protected attribute
    for i in range(len(protected)):
        metrics = compute_fairness_metrics(model_name, data, labels, target, protected[i], priv_groups[i], unpriv_groups[i])
        results.append([protected[i], *metrics])

    return pd.DataFrame(results, columns=["Protected Attribute", "SPD (BP)", "DI (BP)", "SPD (AP)", "DI (AP)", "EOD"])