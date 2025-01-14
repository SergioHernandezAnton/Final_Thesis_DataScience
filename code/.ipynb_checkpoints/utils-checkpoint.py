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

from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score, matthews_corrcoef

from imblearn.over_sampling import SMOTE

from lifelines import CoxPHFitter


# Define global parameters
random_state = 42  # To enable reproducibility
neighbors = 5  # Number of neighbors in K-NN classifier


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
def compute_metrics(raw_model, X, y, balance=False, scaling=True):   
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
        if scaling:
            X_train = StandardScaler().fit_transform(X_train)
            X_test = StandardScaler().fit_transform(X_test)

        # Apply SMOTE to the training data to balance classes
        if balance:
            X_train, y_train = SMOTE(random_state=random_state).fit_resample(X_train, y_train)

        # Train the model
        model = raw_model
        model.fit(X_train, y_train)

        # Predict and evaluate
        y_pred = model.predict(X_test)
        accuracies.append(accuracy_score(y_test, y_pred))
        precisions.append(precision_score(y_test, y_pred))
        recalls.append(recall_score(y_test, y_pred))
        f1_scores.append(f1_score(y_test, y_pred))
        mcc_scores.append(matthews_corrcoef(y_test, y_pred))
        
    # Compute average metrics
    acc_mean = np.mean(accuracies)
    pre_mean = np.mean(precisions)
    rec_mean = np.mean(recalls)
    f1_mean = np.mean(f1_scores)
    mcc_mean = np.mean(mcc_scores)
    
    # Compute standard deviations
    acc_std = np.std(accuracies)
    pre_std = np.std(precisions)
    rec_std = np.std(recalls)
    f1_std = np.std(f1_scores)
    mcc_std = np.std(mcc_scores)
    
    return (acc_mean, acc_std), (pre_mean, pre_std), (rec_mean, rec_std), (f1_mean, f1_std), (mcc_mean, mcc_std)


# Returns computed metrics in a format mean + std from 5-fold cross validation for better representation
def get_formatted_metrics(metrics):
    return [f"{mean:.3f} ± {std:.3f}" for mean, std in metrics]

    
# Compute different metrics of our baseline model
def assess_baseline(X, y, nan_input=False):
    # If input contains NaNs we shall use XGBoost, otherwise we stick with the much simpler 1-Nearest Neighbors
    if nan_input:
        raw_model = get_model("XGBoost")
    else:
        raw_model = get_model("K-Nearest Neighbors", neighbors=1)

    # Compute mean and std using 5-fold cross validation
    metrics = compute_metrics(raw_model, X, y, scaling=False)
    
    # Combine metrics as a formatted string
    formatted_metrics = get_formatted_metrics(metrics)
    
    return pd.DataFrame([["Baseline", *formatted_metrics]], columns=["Model", "Accuracy", "Precision", "Recall", "F1-Score", "MCC"])


# Compute all defined metrics for the listed models and return a summary DataFrame
def compare_models(X, y, balance=False):
    # List to store results
    results = []

    # List models
    model_names = ["Logistic Regression", "Decision Tree", "Random Forest", "XGBoost", "SVM", "K-Nearest Neighbors"]

    for name in model_names:
        # Compute mean and std for each model using 5-fold cross validation
        metrics = compute_metrics(get_model(name), X, y, balance)
        
        # Combine metrics as a formatted string
        formatted_metrics = get_formatted_metrics(metrics)

        # Add the name of the model and the metrics as a row of our df 
        results.append([name, *formatted_metrics])
        
    # Return the summary table as a DataFrame
    return pd.DataFrame(results, columns=["Model", "Accuracy", "Precision", "Recall", "F1-Score", "MCC"])


# Compute metrics for each protected attribute class to assess fairness of the model
def compute_metrics_by_groups(model_name, X, y, protected, priv, unpriv):
    # Metric storage for privileged and unprivileged groups
    priv_metrics = {'accuracy': [], 'precision': [], 'recall': [], 'f1': [], 'mcc': []}
    unpriv_metrics = {'accuracy': [], 'precision': [], 'recall': [], 'f1': [], 'mcc': []}

    # Initialize StratifiedKFold with 5 splits
    skf = StratifiedKFold(n_splits=5, shuffle=True, random_state=random_state)

    # Perform Stratified 5-Fold Cross-Validation
    for train_index, test_index in skf.split(X, y):
        # Split the data
        X_train, X_test = X.iloc[train_index], X.iloc[test_index]
        y_train, y_test = y.iloc[train_index], y.iloc[test_index]

        # Extract the protected attribute for the test set and drop it
        priv_idx = X_test[protected].isin(priv)
        unpriv_idx = X_test[protected].isin(unpriv)

        # Get the indices where the value is True
        priv_idx = priv_idx[priv_idx].index
        unpriv_idx = unpriv_idx[unpriv_idx].index

        # Scale data to increase robustness
        X_train = StandardScaler().fit_transform(X_train)
        X_test = StandardScaler().fit_transform(X_test)

        # Train the model
        model = get_model(model_name)
        model.fit(X_train, y_train)

        # Predict
        y_pred = model.predict(X_test)

        # Filter both real and predicted labels by groups
        y_test_priv = y_test.loc[priv_idx]
        y_test_unpriv = y_test.loc[unpriv_idx]
        y_pred_priv = pd.Series(y_pred, index=X.iloc[test_index].index).loc[priv_idx]
        y_pred_unpriv = pd.Series(y_pred, index=X.iloc[test_index].index).loc[unpriv_idx]

        # Compute metrics for privileged group
        priv_metrics['accuracy'].append(accuracy_score(y_test_priv, y_pred_priv))
        priv_metrics['precision'].append(precision_score(y_test_priv, y_pred_priv))
        priv_metrics['recall'].append(recall_score(y_test_priv, y_pred_priv))
        priv_metrics['f1'].append(f1_score(y_test_priv, y_pred_priv))
        priv_metrics['mcc'].append(matthews_corrcoef(y_test_priv, y_pred_priv))

        # Compute metrics for unprivileged group
        unpriv_metrics['accuracy'].append(accuracy_score(y_test_unpriv, y_pred_unpriv))
        unpriv_metrics['precision'].append(precision_score(y_test_unpriv, y_pred_unpriv))
        unpriv_metrics['recall'].append(recall_score(y_test_unpriv, y_pred_unpriv))
        unpriv_metrics['f1'].append(f1_score(y_test_unpriv, y_pred_unpriv))
        unpriv_metrics['mcc'].append(matthews_corrcoef(y_test_unpriv, y_pred_unpriv))

    # Compute mean and std for both groups
    priv_results = [(np.mean(value), np.std(value)) for metric, value in priv_metrics.items()]
    unpriv_results = [(np.mean(value), np.std(value)) for metric, value in unpriv_metrics.items()]

    return [unpriv_results, priv_results]


# Return a DataFrame with the metrics for each group of the protected attributes to compare them and assess fairness
def fairness_study(model_name, X, y, protected, priv, unpriv):
    # List to store results
    results = []
    
    # For each protected attribute
    for i in range(len(protected)):
        # Compute metrics for each group (mean and std of 5-fold cross-validation)
        metrics = compute_metrics_by_groups(model_name, X, y, protected[i], priv[i], unpriv[i])

        # For each group (Privileged/Unprivileged)
        for j in range(2):
            # Get metrics in a string format combining both mean and std and store them in results
            metrics[j] = get_formatted_metrics(metrics[j])
            
            # Determine group
            group = "Privileged" if j else "Unprivileged"
            results.append([protected[i], group, *metrics[j]])
        
    return pd.DataFrame(results, columns=["Attribute", "Group", "Accuracy", "Precision", "Recall", "F1-Score", "MCC"])


# Custom SHAP bar plot for top n features
def top_features(model_name, X, y, top_n=10):
    # Perform stratified train-test split
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, stratify=y, random_state=random_state)

    # Scale data to increase robustness
    X_train = StandardScaler().fit_transform(X_train)
    X_test = StandardScaler().fit_transform(X_test)

    # Convert back to DataFrame to retain column names for plotting
    X_train = pd.DataFrame(X_train, columns=X.columns)
    X_test = pd.DataFrame(X_test, columns=X.columns)

    # Train the model
    model = get_model(model_name).fit(X_train, y_train)

    # Use different explainers depending on the model
    if model_name in ["Logistic Regression", "SVM", "K-Nearest Neighbors"]:
        explainer = shap.KernelExplainer(model.predict_proba, X_train)
    else:
        explainer = shap.TreeExplainer(model)
    shap_values = explainer.shap_values(X_test)

    # As shap values are predicted for each class, depending on the model (not XGBoost) we have to take them for only 1 class
    if model_name != "XGBoost":
        shap_values = shap_values[:,:,1]
    
    # Compute feature importance using the mean of the absolute value of shap values
    feature_importance = pd.DataFrame({'Feature': X.columns, 'Mean': np.abs(shap_values).mean(axis=0)
    }).sort_values(by='Mean', ascending=False).head(top_n)

    # Plot
    plt.figure(figsize=(8, 6))
    plt.barh(feature_importance['Feature'][::-1], feature_importance['Mean'][::-1], color='royalblue')
    plt.xlabel('Mean Absolute SHAP Value')
    plt.ylabel('Feature')
    plt.title(f'Top {top_n} features using {model_name}')
    plt.grid(axis='x', linestyle='--', alpha=0.7)
    plt.tight_layout()
    plt.show()


# Predict the lifetime of an event
def predict_lifetime(data, labels, duration, event, n_bins=20):
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
    
    # Create calibration data by binning predicted times
    bins = np.linspace(filtered_predicted_times.min(), filtered_predicted_times.max(), n_bins + 1)
    bin_centers = (bins[:-1] + bins[1:]) / 2  # Compute bin centers

    # Initialize empty lists for the next loop
    actual_means = []
    predicted_means = []
    
    for i in range(n_bins):
        # Select predictions and actuals in the current bin
        bin_mask = (filtered_predicted_times >= bins[i]) & (filtered_predicted_times < bins[i+1])
        if bin_mask.sum() > 0:  # Avoid empty bins
            actual_means.append(filtered_actual_times[bin_mask].mean())
            predicted_means.append(filtered_predicted_times[bin_mask].mean())
    
    # Calibration plot
    plt.figure(figsize=(8, 6))
    plt.plot(bin_centers, bin_centers, color='red', linestyle='--', label='Perfect Calibration')
    plt.scatter(predicted_means, actual_means, color='blue', alpha=0.8, label='Calibration Points')
    plt.xlabel('Mean Predicted Survival Time')
    plt.ylabel('Mean Actual Survival Time')
    plt.title('Calibration Plot for Predicted vs Actual Survival Time')
    plt.legend()
    plt.grid(alpha=0.3)
    plt.show()