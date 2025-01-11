** Runtime:2044606590.1 Data:/prj/plcoims/database/plco_trial/masterfiles/t20241011/purple/cancers/breast/breast_prsn.gz **;
proc format;
  ** FORMAT: $bq_buildf **;
  ** FOR VARIABLE: bq_build **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $bq_buildf
  ;
  ** FORMAT: $buildf **;
  ** FOR VARIABLE: build **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $buildf
  ;
  ** FORMAT: build_cancersf **;
  ** FOR VARIABLE: build_cancers **;
  value build_cancersf
    1 = "Trial Only"
  ;
  ** FORMAT: build_death_cutofff **;
  ** FOR VARIABLE: build_death_cutoff **;
  value build_death_cutofff
    6 = "Deaths through 2022"
  ;
  ** FORMAT: build_incidence_cutofff **;
  ** FOR VARIABLE: build_incidence_cutoff **;
  value build_incidence_cutofff
    1 = "Cancer Incidence Data Through 2009"
  ;
  ** FORMAT: $dth_buildf **;
  ** FOR VARIABLE: dth_build **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $dth_buildf
  ;
  ** FORMAT: $plco_idf **;
  ** FOR VARIABLE: plco_id **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $plco_idf
  ;
  ** FORMAT: in_tgwas_populationf **;
  ** FOR VARIABLE: in_tgwas_population **;
  value in_tgwas_populationf
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: ph_any_trialf **;
  ** FOR VARIABLE: ph_any_trial **;
  value ph_any_trialf
    0 = "No"
    1 = "Yes"
    9 = "Unknown"
  ;
  ** FORMAT: ph_breast_trialf **;
  ** FOR VARIABLE: ph_breast_trial **;
  value ph_breast_trialf
    0 = "No"
    1 = "Yes"
    9 = "Unknown"
  ;
  ** FORMAT: entryage_bqf **;
  ** FOR VARIABLE: entryage_bq **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entryage_bqf
    .F = "No Form"
  ;
  ** FORMAT: entrydays_bqf **;
  ** FOR VARIABLE: entrydays_bq **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entrydays_bqf
    .F = "No Form"
  ;
  ** FORMAT: breast_eligible_bqf **;
  ** FOR VARIABLE: breast_eligible_bq **;
  value breast_eligible_bqf
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: ph_any_bqf **;
  ** FOR VARIABLE: ph_any_bq **;
  value ph_any_bqf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
    9 = "Unknown"
  ;
  ** FORMAT: ph_breast_bqf **;
  ** FOR VARIABLE: ph_breast_bq **;
  value ph_breast_bqf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
    9 = "Unknown"
  ;
  ** FORMAT: breast_eligible_dhqf **;
  ** FOR VARIABLE: breast_eligible_dhq **;
  value breast_eligible_dhqf
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: entryage_dhqf **;
  ** FOR VARIABLE: entryage_dhq **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entryage_dhqf
    .F = "No Form"
  ;
  ** FORMAT: entrydays_dhqf **;
  ** FOR VARIABLE: entrydays_dhq **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entrydays_dhqf
    .F = "No Form"
  ;
  ** FORMAT: ph_any_dhqf **;
  ** FOR VARIABLE: ph_any_dhq **;
  value ph_any_dhqf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
    9 = "Unknown"
  ;
  ** FORMAT: ph_breast_dhqf **;
  ** FOR VARIABLE: ph_breast_dhq **;
  value ph_breast_dhqf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
    9 = "Unknown"
  ;
  ** FORMAT: breast_eligible_dqxf **;
  ** FOR VARIABLE: breast_eligible_dqx **;
  value breast_eligible_dqxf
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: entryage_dqxf **;
  ** FOR VARIABLE: entryage_dqx **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entryage_dqxf
    .F = "No Form"
  ;
  ** FORMAT: entrydays_dqxf **;
  ** FOR VARIABLE: entrydays_dqx **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entrydays_dqxf
    .F = "No Form"
  ;
  ** FORMAT: ph_any_dqxf **;
  ** FOR VARIABLE: ph_any_dqx **;
  value ph_any_dqxf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
    9 = "Unknown"
  ;
  ** FORMAT: ph_breast_dqxf **;
  ** FOR VARIABLE: ph_breast_dqx **;
  value ph_breast_dqxf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
    9 = "Unknown"
  ;
  ** FORMAT: breast_eligible_sqxf **;
  ** FOR VARIABLE: breast_eligible_sqx **;
  value breast_eligible_sqxf
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: entryage_sqxf **;
  ** FOR VARIABLE: entryage_sqx **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entryage_sqxf
    .F = "No Form"
  ;
  ** FORMAT: entrydays_sqxf **;
  ** FOR VARIABLE: entrydays_sqx **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entrydays_sqxf
    .F = "No Form"
  ;
  ** FORMAT: ph_any_sqxf **;
  ** FOR VARIABLE: ph_any_sqx **;
  value ph_any_sqxf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
    9 = "Unknown"
  ;
  ** FORMAT: ph_breast_sqxf **;
  ** FOR VARIABLE: ph_breast_sqx **;
  value ph_breast_sqxf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
    9 = "Unknown"
  ;
  ** FORMAT: entryage_muqf **;
  ** FOR VARIABLE: entryage_muq **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entryage_muqf
    .F = "No Form"
  ;
  ** FORMAT: entrydays_muqf **;
  ** FOR VARIABLE: entrydays_muq **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entrydays_muqf
    .F = "No Form"
  ;
  ** FORMAT: ph_any_muqf **;
  ** FOR VARIABLE: ph_any_muq **;
  value ph_any_muqf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
    9 = "Unknown"
  ;
  ** FORMAT: ph_breast_muqf **;
  ** FOR VARIABLE: ph_breast_muq **;
  value ph_breast_muqf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
    9 = "Unknown"
  ;
  ** FORMAT: breast_exitagef **;
  ** FOR VARIABLE: breast_exitage **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_exitagef
  ;
  ** FORMAT: breast_exitdaysf **;
  ** FOR VARIABLE: breast_exitdays **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_exitdaysf
  ;
  ** FORMAT: breast_exitstatf **;
  ** FOR VARIABLE: breast_exitstat **;
  value breast_exitstatf
    0 = "No Time at Risk"
    1 = "Confirmed Cancer"
    3 = "Last Participant Contact Prior to Unconfirmed Report"
    4 = "Last Participant Contact"
    5 = "Death"
    6 = "Date Lost, Prior to Death"
    8 = "Cancer Free at Cutoff"
    9 = "Post-2009 Death, Exit At 12/31/09"
  ;
  ** FORMAT: fstcan_exitagef **;
  ** FOR VARIABLE: fstcan_exitage **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value fstcan_exitagef
  ;
  ** FORMAT: fstcan_exitdaysf **;
  ** FOR VARIABLE: fstcan_exitdays **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value fstcan_exitdaysf
  ;
  ** FORMAT: fstcan_exitstatf **;
  ** FOR VARIABLE: fstcan_exitstat **;
  value fstcan_exitstatf
    0 = "No Time at Risk"
    1 = "Confirmed Cancer"
    3 = "Last Participant Contact Prior to Unconfirmed Report"
    4 = "Last Participant Contact"
    5 = "Death"
    6 = "Date Lost, Prior to Death"
    8 = "Cancer Free at Cutoff"
    9 = "Post-2009 Death, Exit At 12/31/09"
  ;
  ** FORMAT: mortality_exitagef **;
  ** FOR VARIABLE: mortality_exitage **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value mortality_exitagef
  ;
  ** FORMAT: mortality_exitdaysf **;
  ** FOR VARIABLE: mortality_exitdays **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value mortality_exitdaysf
  ;
  ** FORMAT: mortality_exitstatf **;
  ** FOR VARIABLE: mortality_exitstat **;
  value mortality_exitstatf
    1 = "Death"
    2 = "Last NDI/Cutoff"
    3 = "Refusal"
    4 = "Other"
  ;
  ** FORMAT: agef **;
  ** FOR VARIABLE: age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value agef
  ;
  ** FORMAT: agelevelf **;
  ** FOR VARIABLE: agelevel **;
  value agelevelf
    0 = "<= 59"
    1 = "60-64"
    2 = "65-69"
    3 = ">= 70"
  ;
  ** FORMAT: armf **;
  ** FOR VARIABLE: arm **;
  value armf
    1 = "Intervention"
    2 = "Control"
  ;
  ** FORMAT: centerf **;
  ** FOR VARIABLE: center **;
  value centerf
    1 = "University of Colorado"
    2 = "Georgetown University"
    3 = "Pacific Health Research and Education Institute (Honolulu)"
    4 = "Henry Ford Health System"
    5 = "University of Minnesota"
    6 = "Washington University in St Louis"
    8 = "University of Pittsburgh"
    9 = "University of Utah"
    10 = "Marshfield Clinic Research Foundation"
    11 = "University of Alabama at Birmingham"
  ;
  ** FORMAT: rndyearf **;
  ** FOR VARIABLE: rndyear **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value rndyearf
  ;
  ** FORMAT: sexf **;
  ** FOR VARIABLE: sex **;
  value sexf
    2 = "Female"
  ;
  ** FORMAT: breast_annyrf **;
  ** FOR VARIABLE: breast_annyr **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_annyrf
    .N = "Not applicable"
  ;
  ** FORMAT: breast_cancerf **;
  ** FOR VARIABLE: breast_cancer **;
  value breast_cancerf
    0 = "No Confirmed Cancer"
    1 = "Confirmed Cancer"
  ;
  ** FORMAT: breast_cancer_diagdaysf **;
  ** FOR VARIABLE: breast_cancer_diagdays **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_cancer_diagdaysf
    .N = "Not Applicable"
  ;
  ** FORMAT: breast_cancer_firstf **;
  ** FOR VARIABLE: breast_cancer_first **;
  value breast_cancer_firstf
    .N = "Not Applicable"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: breast_dxprocf **;
  ** FOR VARIABLE: breast_dxproc **;
  value breast_dxprocf
    .F = "No BCS Form"
    1 = "FNA"
    2 = "Excisional Biopsy"
    3 = "Incisional Biopsy"
    4 = "Core Biopsy"
    11 = "Other Breast Biopsy, Yielding Tissue"
    12 = "Other Breast Biopsy Yielding Cytology"
    13 = "Other Organ (Non Breast) Biopsy Yielding Tissue"
    14 = "Other Organ (Non Breast) Biopsy Yielding Cytology"
    15 = "Lymph Node Biopsy Yielding Tissue"
    16 = "Lymph Node Biopsy Yielding Cytology"
    17 = "Other Biopsy, Yielding Tissue (Specify)"
    18 = "Other Biopsy, Yielding Cytology (Specify)"
    19 = "No Biopsy Performed, Radiologic/Clinical Diagnosis"
    99 = "Unknown, Not Recorded, Or Cannot Be Assesssed"
  ;
  ** FORMAT: breast_num_cancersf **;
  ** FOR VARIABLE: breast_num_cancers **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_num_cancersf
  ;
  ** FORMAT: breast_reasonf **;
  ** FOR VARIABLE: breast_reason **;
  value breast_reasonf
    .F = "No BCS Form"
    1 = "Screen Derived (Occult)"
    2 = "Symptomatic"
    9 = "Other"
  ;
  ** FORMAT: breast_resect_procf **;
  ** FOR VARIABLE: breast_resect_proc **;
  value breast_resect_procf
    .F = "No BCS Form"
    1 = "Lumpectomy"
    2 = "Mastectomy"
    3 = "Biopsy Only"
    4 = "Other, Specify"
  ;
  ** FORMAT: has_bcsf **;
  ** FOR VARIABLE: has_bcs **;
  value has_bcsf
    0 = "False"
    1 = "True"
  ;
  ** FORMAT: breast_behaviorf **;
  ** FOR VARIABLE: breast_behavior **;
  value breast_behaviorf
    .F = "No Form"
    .N = "Not Applicable"
    2 = "In Situ"
    3 = "Malignant, Primary Site"
  ;
  ** FORMAT: breast_er_statusf **;
  ** FOR VARIABLE: breast_er_status **;
  value breast_er_statusf
    .F = "No BCS Form"
    1 = "Negative"
    2 = "Equivocal - Positive Cells Within Range of 1-9%"
    3 = "Positive"
    4 = "Indeterminant"
    5 = "Not Available"
    6 = "Ordered, No Results"
    7 = "Not Ordered"
  ;
  ** FORMAT: breast_estrogen_quantf **;
  ** FOR VARIABLE: breast_estrogen_quant **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_estrogen_quantf
    .F = "No BCS Form"
    .M = "Missing"
  ;
  ** FORMAT: breast_gradef **;
  ** FOR VARIABLE: breast_grade **;
  value breast_gradef
    .N = "Not Applicable"
    1 = "Well Differentiated; Grade I"
    2 = "Moderately Differentiated; Grade II"
    3 = "Poorly Differentiated; Grade III"
    4 = "Undifferentiated; Grade IV"
    9 = "Not Determined/Stated/or Applicable"
  ;
  ** FORMAT: breast_her2_statf **;
  ** FOR VARIABLE: breast_her2_stat **;
  value breast_her2_statf
    .F = "No BCS Form"
    0 = "0"
    1 = "1+"
    2 = "2+"
    3 = "3+"
    8 = "Not Ordered"
    9 = "Ordered, No Results"
  ;
  ** FORMAT: breast_her2fish_ratiof **;
  ** FOR VARIABLE: breast_her2fish_ratio **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_her2fish_ratiof
    .F = "No BCS Form"
    .M = "Missing"
  ;
  ** FORMAT: breast_her2summf **;
  ** FOR VARIABLE: breast_her2summ **;
  value breast_her2summf
    .F = "No BCS Form"
    1 = "Positive"
    2 = "Equivocal"
    3 = "Negative"
    4 = "Indeterminant"
    5 = "Ordered, No Results"
  ;
  ** FORMAT: breast_hist_typef **;
  ** FOR VARIABLE: breast_hist_type **;
  value breast_hist_typef
    .F = "No BCS Form"
    1 = "Lobular"
    2 = "Tubular"
    3 = "Ductal, NOS"
    4 = "Other"
  ;
  ** FORMAT: breast_morphologyf **;
  ** FOR VARIABLE: breast_morphology **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_morphologyf
    .F = "No Form"
    .N = "Not Applicable"
  ;
  ** FORMAT: breast_pr_statusf **;
  ** FOR VARIABLE: breast_pr_status **;
  value breast_pr_statusf
    .F = "No BCS Form"
    1 = "Negative"
    2 = "Equivocal - Positive Cells Within Range of 1-9%"
    3 = "Positive"
    4 = "Indeterminant"
    5 = "Not Available"
    6 = "Ordered, No Results"
    7 = "Not Ordered"
  ;
  ** FORMAT: breast_progest_quantf **;
  ** FOR VARIABLE: breast_progest_quant **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_progest_quantf
    .F = "No BCS Form"
    .M = "Missing"
    999 = "Not Available"
  ;
  ** FORMAT: breast_stagef **;
  ** FOR VARIABLE: breast_stage **;
  value breast_stagef
    .F = "No Form"
    .M = "Missing Data"
    0 = "Stage 0"
    100 = "Stage I"
    210 = "Stage IIA"
    220 = "Stage IIB"
    310 = "Stage IIIA"
    320 = "Stage IIIB"
    400 = "Stage IV"
  ;
  ** FORMAT: breast_stage_7ef **;
  ** FOR VARIABLE: breast_stage_7e **;
  value breast_stage_7ef
    .F = "No Form"
    .M = "Missing Data"
    0 = "Stage 0"
    100 = "Stage I"
    110 = "Stage IA"
    210 = "Stage IIA"
    220 = "Stage IIB"
    300 = "Stage III"
    310 = "Stage IIIA"
    320 = "Stage IIIB"
    330 = "Stage IIIC"
    400 = "Stage IV"
  ;
  ** FORMAT: breast_stage_mf **;
  ** FOR VARIABLE: breast_stage_m **;
  value breast_stage_mf
    .F = "No Form"
    .M = "Missing Data"
    0 = "M0"
    100 = "M1"
    999 = "MX"
  ;
  ** FORMAT: breast_stage_nf **;
  ** FOR VARIABLE: breast_stage_n **;
  value breast_stage_nf
    .F = "No Form"
    .M = "Missing Data"
    0 = "N0"
    110 = "N1a"
    120 = "N1b"
    200 = "N2"
    300 = "N3"
    999 = "NX"
  ;
  ** FORMAT: breast_stage_tf **;
  ** FOR VARIABLE: breast_stage_t **;
  value breast_stage_tf
    .F = "No Form"
    .M = "Missing Data"
    20 = "Tis"
    100 = "T1"
    110 = "T1a"
    120 = "T1b"
    130 = "T1c"
    180 = "T1mi"
    200 = "T2"
    300 = "T3"
    400 = "T4"
    410 = "T4a"
    420 = "T4b"
    430 = "T4c"
    440 = "T4d"
    999 = "TX"
  ;
  ** FORMAT: breast_tmrsizef **;
  ** FOR VARIABLE: breast_tmrsize **;
  value breast_tmrsizef
    .F = "No BCS Form"
    .M = "Missing"
    1 = "0 cm to Less Than 2 cm"
    2 = "2 cm to Less Than 5 cm"
    3 = "5 cm or More"
  ;
  ** FORMAT: $breast_topographyf **;
  ** FOR VARIABLE: breast_topography **;
  value $breast_topographyf
    " " = "Not Applicable, No Form, or Missing"
    "C500" = "Nipple"
    "C501" = "Central Portion of Breast"
    "C502" = "Upper Inner Quadrant of Breast"
    "C503" = "Lower Inner Quadrant of Breast"
    "C504" = "Upper Outer Quadrant of Breast"
    "C505" = "Lower Outer Quadrant of Breast"
    "C506" = "Axillary Tail of Breast"
    "C508" = "Overlapping Lesion of Breast"
    "C509" = "Breast NOS"
  ;
  ** FORMAT: breast_has_deliv_heslide_imgf **;
  ** FOR VARIABLE: breast_has_deliv_heslide_img **;
  value breast_has_deliv_heslide_imgf
    .N = "Not Applicable"
    1 = "Yes"
  ;
  ** FORMAT: breast_has_deliv_ihcmarker_imgf **;
  ** FOR VARIABLE: breast_has_deliv_ihcmarker_img **;
  value breast_has_deliv_ihcmarker_imgf
    .N = "Not Applicable"
    1 = "Yes"
  ;
  ** FORMAT: breast_num_heslide_imgsf **;
  ** FOR VARIABLE: breast_num_heslide_imgs **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_num_heslide_imgsf
    .N = "Not Applicable"
  ;
  ** FORMAT: breast_num_ihcmarker_imgsf **;
  ** FOR VARIABLE: breast_num_ihcmarker_imgs **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_num_ihcmarker_imgsf
    .N = "Not Applicable"
  ;
  ** FORMAT: dth_daysf **;
  ** FOR VARIABLE: dth_days **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value dth_daysf
    .N = "Not applicable"
  ;
  ** FORMAT: is_deadf **;
  ** FOR VARIABLE: is_dead **;
  value is_deadf
    0 = "Not Confirmed Dead"
    1 = "Dead"
  ;
  ** FORMAT: is_dead_with_codf **;
  ** FOR VARIABLE: is_dead_with_cod **;
  value is_dead_with_codf
    0 = "Not Confirmed Dead"
    1 = "Dead"
  ;
  ** FORMAT: d_cancersitef **;
  ** FOR VARIABLE: d_cancersite **;
  value d_cancersitef
    .F = "No Form"
    .N = "Not Dead"
    2 = "Lung"
    3 = "Colorectal"
    4 = "Ovarian, Peritoneal, and Fallopian Tube"
    11 = "Pancreas"
    12 = "Melanoma of the Skin"
    13 = "Bladder"
    14 = "Breast"
    15 = "Hematopoietic"
    16 = "Endometrial"
    17 = "Glioma"
    18 = "Renal"
    19 = "Thyroid"
    20 = "Head and Neck"
    21 = "Liver"
    23 = "Upper-Gastrointestinal"
    24 = "Biliary"
    99 = "Other Cancer"
    999 = "Not Cancer"
  ;
  ** FORMAT: d_cause_of_deathf **;
  ** FOR VARIABLE: d_cause_of_death **;
  value d_cause_of_deathf
    .F = "No Form"
    .N = "Not applicable"
    2 = "Lung"
    3 = "Colorectal"
    4 = "Ovarian, Peritoneal, and Fallopian Tube"
    11 = "Pancreas"
    12 = "Melanoma of the Skin"
    13 = "Bladder"
    14 = "Breast"
    15 = "Hematopoietic"
    16 = "Endometrial"
    17 = "Glioma"
    18 = "Renal"
    19 = "Thyroid"
    20 = "Head and Neck"
    21 = "Liver"
    23 = "Upper-Gastrointestinal"
    24 = "Biliary"
    26 = "Other Neoplasm"
    100 = "Ischemic Heart Disease"
    101 = "Cerebrovascular Accident"
    102 = "Other Circulatory Disease"
    103 = "Respiratory Illness"
    104 = "Digestive Disease"
    105 = "Infectious Disease"
    106 = "Endocrine, Nutritional and Metabolic Diseases, and Immunity Disorders"
    107 = "Diseases of the Nervous System"
    108 = "Accident"
    109 = "Other"
    200 = "Covid death"
  ;
  ** FORMAT: d_seer_deathf **;
  ** FOR VARIABLE: d_seer_death **;
  value d_seer_deathf
    .F = "No Form"
    .N = "Not Applicable"
    2 = "Lung"
    3 = "Colorectal"
    4 = "Ovarian"
    5 = "Peritoneal"
    6 = "Fallopian Tube"
    11 = "Pancreas"
    12 = "Melanoma of the Skin"
    13 = "Bladder"
    14 = "Breast"
    15 = "Hematopoietic"
    16 = "Endometrial"
    17 = "Glioma"
    18 = "Renal"
    19 = "Thyroid"
    20 = "Head and Neck"
    21 = "Liver"
    23 = "Upper-Gastrointestinal"
    24 = "Biliary"
    21030 = "Small Intestine"
    21042 = "Colon: Appendix"
    21049 = "Colon: Large Intestine, NOS"
    21060 = "Anus, Anal Canal, and Anorectum"
    21110 = "Retroperitoneum"
    21130 = "Other Digestive Organs"
    22050 = "Pleura"
    22060 = "Trachea, Mediastinum and Other Resp Organs"
    23000 = "Bones and Joints"
    24000 = "Soft Tissue including Heart"
    25020 = "Other Non-Epithelial Skin"
    27010 = "Cervix Uteri"
    27050 = "Vagina"
    27060 = "Vulva"
    27070 = "Other Female Genital Organs"
    29030 = "Ureter"
    29040 = "Other Urinary Organs"
    30000 = "Eye and Orbit"
    32020 = "Other Endocrine including Thymus"
    37000 = "Miscellaneous"
    38000 = "In situ, benign or unknown behavior neoplasm"
    50030 = "Septicemia"
    50040 = "Other Infectious and Parasitic Diseases"
    50050 = "Diabetes Mellitus"
    50051 = "Alzheimers"
    50060 = "Diseases of Heart"
    50070 = "Hypertension without Heart Disease"
    50080 = "Cerebrovascular Diseases"
    50090 = "Atherosclerosis"
    50100 = "Aortic Aneurysm and Dissection"
    50110 = "Other Diseases of Arteries, Arterioles, Capillaries"
    50120 = "Pneumonia and Influenza"
    50130 = "Chronic Obstructive Pulmonary Disease and Allied Cond."
    50140 = "Stomach and Duodenal Ulcers"
    50150 = "Chronic Liver Disease and Cirrhosis"
    50160 = "Nephritis, Nephrotic Syndrome and Nephrosis"
    50180 = "Congenital Anomalies"
    50200 = "Symptoms, Signs and Ill-Defined Conditions"
    50300 = "Other death"
    60000 = "Unnatural Death"
    60001 = "All other endocrine and metabolic diseases and immunity disorders"
    60002 = "All other diseases of blood and blood-forming organs"
    60003 = "Senile and presenile organic psychotic conditions"
    60004 = "All other psychoses"
    60005 = "Parkinson’s disease"
    60006 = "Other hereditary and degenerative diseases of the central nervous system"
    60007 = "Other diseases of the nervous system"
    60008 = "Pneumoconioses and other lung diseases due to external agents"
    60009 = "All other diseases of respiratory system"
    60010 = "All other noninfective gastroenteritis and colitis"
    60011 = "All other diseases of digestive system"
    60012 = "All other diseases of urinary system"
    70000 = "Covid death"
  ;
  ** FORMAT: d_seercat_deathf **;
  ** FOR VARIABLE: d_seercat_death **;
  value d_seercat_deathf
    .F = "No Form"
    .N = "Not Dead"
    2 = "Lung"
    3 = "Colorectal"
    4 = "Ovarian"
    5 = "Peritoneal"
    6 = "Fallopian Tube"
    11 = "Pancreas"
    12 = "Melanoma of the Skin"
    13 = "Bladder"
    14 = "Breast"
    15 = "Hematopoietic"
    16 = "Endometrial"
    17 = "Glioma"
    18 = "Renal"
    19 = "Thyroid"
    20 = "Head and Neck"
    21 = "Liver"
    23 = "Upper-Gastrointestinal"
    24 = "Biliary"
    112 = "Digestive System"
    113 = "Respiratory System"
    114 = "Bones and Joints"
    115 = "Soft Tissue including Heart"
    116 = "Skin excluding Basal and Squamous"
    118 = "Female Genital System"
    120 = "Urinary System"
    121 = "Eye and Orbit"
    123 = "Endocrine System"
    129 = "Miscellaneous"
    131 = "In situ, benign or unknown behavior neoplasm"
    135 = "Septicemia"
    136 = "Other Infectious and Parasitic Diseases"
    137 = "Diabetes Mellitus"
    138 = "Alzheimers"
    139 = "Diseases of Heart"
    140 = "Hypertension without Heart Disease"
    141 = "Cerebrovascular Diseases"
    142 = "Atherosclerosis"
    143 = "Aortic Aneurysm and Dissection"
    144 = "Other Diseases of Arteries, Arterioles, Capillaries"
    145 = "Pneumonia and Influenza"
    146 = "Chronic Obstructive Pulmonary Disease and Allied Cond."
    147 = "Stomach and Duodenal Ulcers"
    148 = "Chronic Liver Disease and Cirrhosis"
    149 = "Nephritis, Nephrotic Syndrome and Nephrosis"
    151 = "Congenital Anomalies"
    153 = "Symptoms, Signs and Ill-Defined Conditions"
    180 = "Covid death"
    199 = "Other death"
    200 = "Unnatural death"
  ;
  ** FORMAT: d_dth_breastf **;
  ** FOR VARIABLE: d_dth_breast **;
  value d_dth_breastf
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: f_cancersitef **;
  ** FOR VARIABLE: f_cancersite **;
  value f_cancersitef
    .F = "No Form"
    .N = "Not Dead"
    2 = "Lung"
    3 = "Colorectal"
    4 = "Ovarian, Peritoneal, and Fallopian Tube"
    11 = "Pancreas"
    12 = "Melanoma of the Skin"
    13 = "Bladder"
    14 = "Breast"
    15 = "Hematopoietic"
    16 = "Endometrial"
    17 = "Glioma"
    18 = "Renal"
    19 = "Thyroid"
    20 = "Head and Neck"
    21 = "Liver"
    23 = "Upper-Gastrointestinal"
    24 = "Biliary"
    99 = "Other Cancer"
    999 = "Not Cancer"
  ;
  ** FORMAT: f_cause_of_deathf **;
  ** FOR VARIABLE: f_cause_of_death **;
  value f_cause_of_deathf
    .F = "No Form"
    .N = "Not applicable"
    2 = "Lung"
    3 = "Colorectal"
    4 = "Ovarian, Peritoneal, and Fallopian Tube"
    11 = "Pancreas"
    12 = "Melanoma of the Skin"
    13 = "Bladder"
    14 = "Breast"
    15 = "Hematopoietic"
    16 = "Endometrial"
    17 = "Glioma"
    18 = "Renal"
    19 = "Thyroid"
    20 = "Head and Neck"
    21 = "Liver"
    23 = "Upper-Gastrointestinal"
    24 = "Biliary"
    26 = "Other Neoplasm"
    100 = "Ischemic Heart Disease"
    101 = "Cerebrovascular Accident"
    102 = "Other Circulatory Disease"
    103 = "Respiratory Illness"
    104 = "Digestive Disease"
    105 = "Infectious Disease"
    106 = "Endocrine, Nutritional and Metabolic Diseases, and Immunity Disorders"
    107 = "Diseases of the Nervous System"
    108 = "Accident"
    109 = "Other"
    200 = "Covid death"
  ;
  ** FORMAT: f_seer_deathf **;
  ** FOR VARIABLE: f_seer_death **;
  value f_seer_deathf
    .F = "No Form"
    .N = "Not Applicable"
    2 = "Lung"
    3 = "Colorectal"
    4 = "Ovarian"
    5 = "Peritoneal"
    6 = "Fallopian Tube"
    11 = "Pancreas"
    12 = "Melanoma of the Skin"
    13 = "Bladder"
    14 = "Breast"
    15 = "Hematopoietic"
    16 = "Endometrial"
    17 = "Glioma"
    18 = "Renal"
    19 = "Thyroid"
    20 = "Head and Neck"
    21 = "Liver"
    23 = "Upper-Gastrointestinal"
    24 = "Biliary"
    21030 = "Small Intestine"
    21042 = "Colon: Appendix"
    21049 = "Colon: Large Intestine, NOS"
    21060 = "Anus, Anal Canal, and Anorectum"
    21110 = "Retroperitoneum"
    21130 = "Other Digestive Organs"
    22050 = "Pleura"
    22060 = "Trachea, Mediastinum and Other Resp Organs"
    23000 = "Bones and Joints"
    24000 = "Soft Tissue including Heart"
    25020 = "Other Non-Epithelial Skin"
    27010 = "Cervix Uteri"
    27050 = "Vagina"
    27060 = "Vulva"
    27070 = "Other Female Genital Organs"
    29030 = "Ureter"
    29040 = "Other Urinary Organs"
    30000 = "Eye and Orbit"
    32020 = "Other Endocrine including Thymus"
    37000 = "Miscellaneous"
    38000 = "In situ, benign or unknown behavior neoplasm"
    50030 = "Septicemia"
    50040 = "Other Infectious and Parasitic Diseases"
    50050 = "Diabetes Mellitus"
    50051 = "Alzheimers"
    50060 = "Diseases of Heart"
    50070 = "Hypertension without Heart Disease"
    50080 = "Cerebrovascular Diseases"
    50090 = "Atherosclerosis"
    50100 = "Aortic Aneurysm and Dissection"
    50110 = "Other Diseases of Arteries, Arterioles, Capillaries"
    50120 = "Pneumonia and Influenza"
    50130 = "Chronic Obstructive Pulmonary Disease and Allied Cond."
    50140 = "Stomach and Duodenal Ulcers"
    50150 = "Chronic Liver Disease and Cirrhosis"
    50160 = "Nephritis, Nephrotic Syndrome and Nephrosis"
    50180 = "Congenital Anomalies"
    50200 = "Symptoms, Signs and Ill-Defined Conditions"
    50300 = "Other death"
    60000 = "Unnatural Death"
    60001 = "All other endocrine and metabolic diseases and immunity disorders"
    60002 = "All other diseases of blood and blood-forming organs"
    60003 = "Senile and presenile organic psychotic conditions"
    60004 = "All other psychoses"
    60005 = "Parkinson’s disease"
    60006 = "Other hereditary and degenerative diseases of the central nervous system"
    60007 = "Other diseases of the nervous system"
    60008 = "Pneumoconioses and other lung diseases due to external agents"
    60009 = "All other diseases of respiratory system"
    60010 = "All other noninfective gastroenteritis and colitis"
    60011 = "All other diseases of digestive system"
    60012 = "All other diseases of urinary system"
    70000 = "Covid death"
  ;
  ** FORMAT: f_seercat_deathf **;
  ** FOR VARIABLE: f_seercat_death **;
  value f_seercat_deathf
    .F = "No Form"
    .N = "Not Dead"
    2 = "Lung"
    3 = "Colorectal"
    4 = "Ovarian"
    5 = "Peritoneal"
    6 = "Fallopian Tube"
    11 = "Pancreas"
    12 = "Melanoma of the Skin"
    13 = "Bladder"
    14 = "Breast"
    15 = "Hematopoietic"
    16 = "Endometrial"
    17 = "Glioma"
    18 = "Renal"
    19 = "Thyroid"
    20 = "Head and Neck"
    21 = "Liver"
    23 = "Upper-Gastrointestinal"
    24 = "Biliary"
    112 = "Digestive System"
    113 = "Respiratory System"
    114 = "Bones and Joints"
    115 = "Soft Tissue including Heart"
    116 = "Skin excluding Basal and Squamous"
    118 = "Female Genital System"
    120 = "Urinary System"
    121 = "Eye and Orbit"
    123 = "Endocrine System"
    129 = "Miscellaneous"
    131 = "In situ, benign or unknown behavior neoplasm"
    135 = "Septicemia"
    136 = "Other Infectious and Parasitic Diseases"
    137 = "Diabetes Mellitus"
    138 = "Alzheimers"
    139 = "Diseases of Heart"
    140 = "Hypertension without Heart Disease"
    141 = "Cerebrovascular Diseases"
    142 = "Atherosclerosis"
    143 = "Aortic Aneurysm and Dissection"
    144 = "Other Diseases of Arteries, Arterioles, Capillaries"
    145 = "Pneumonia and Influenza"
    146 = "Chronic Obstructive Pulmonary Disease and Allied Cond."
    147 = "Stomach and Duodenal Ulcers"
    148 = "Chronic Liver Disease and Cirrhosis"
    149 = "Nephritis, Nephrotic Syndrome and Nephrosis"
    151 = "Congenital Anomalies"
    153 = "Symptoms, Signs and Ill-Defined Conditions"
    180 = "Covid death"
    199 = "Other death"
    200 = "Unnatural death"
  ;
  ** FORMAT: f_dth_breastf **;
  ** FOR VARIABLE: f_dth_breast **;
  value f_dth_breastf
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: bq_adminmf **;
  ** FOR VARIABLE: bq_adminm **;
  value bq_adminmf
    .F = "No Form"
    .M = "Not Answered"
    1 = "Self"
    2 = "Self With Assistance"
    3 = "In-Person Interview By SC Staff"
    4 = "In-Person Interview By Other"
    5 = "Telephone"
  ;
  ** FORMAT: bq_agef **;
  ** FOR VARIABLE: bq_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value bq_agef
    .F = "No Form"
  ;
  ** FORMAT: bq_compdaysf **;
  ** FOR VARIABLE: bq_compdays **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value bq_compdaysf
    .F = "No Form"
  ;
  ** FORMAT: bq_returnedf **;
  ** FOR VARIABLE: bq_returned **;
  value bq_returnedf
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: educatf **;
  ** FOR VARIABLE: educat **;
  value educatf
    .F = "No Form"
    .M = "Not Answered"
    1 = "Less Than 8 Years"
    2 = "8-11 Years"
    3 = "12 Years Or Completed High School"
    4 = "Post High School Training Other Than College"
    5 = "Some College"
    6 = "College Graduate"
    7 = "Postgraduate"
  ;
  ** FORMAT: hispanic_ff **;
  ** FOR VARIABLE: hispanic_f **;
  value hispanic_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "Not Hispanic"
    1 = "Hispanic"
  ;
  ** FORMAT: maritalf **;
  ** FOR VARIABLE: marital **;
  value maritalf
    .F = "No Form"
    .M = "Not Answered"
    1 = "Married Or Living As Married"
    2 = "Widowed"
    3 = "Divorced"
    4 = "Separated"
    5 = "Never Married"
  ;
  ** FORMAT: occupatf **;
  ** FOR VARIABLE: occupat **;
  value occupatf
    .F = "No Form"
    .M = "Not Answered"
    1 = "Homemaker"
    2 = "Working"
    3 = "Unemployed"
    4 = "Retired"
    5 = "Extended Sick Leave"
    6 = "Disabled"
    7 = "Other"
  ;
  ** FORMAT: race7f **;
  ** FOR VARIABLE: race7 **;
  value race7f
    1 = "White, Non-Hispanic"
    2 = "Black, Non-Hispanic"
    3 = "Hispanic"
    4 = "Asian"
    5 = "Pacific Islander"
    6 = "American Indian"
    7 = "Missing"
  ;
  ** FORMAT: cig_statf **;
  ** FOR VARIABLE: cig_stat **;
  value cig_statf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Not Answered"
    0 = "Never Smoked Cigarettes"
    1 = "Current Cigarette Smoker"
    2 = "Former Cigarette Smoker"
  ;
  ** FORMAT: cig_stopf **;
  ** FOR VARIABLE: cig_stop **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value cig_stopf
    .F = "No Form"
    .M = "Not Answered"
    .N = "Not Applicable"
    0.5 = "Six Months"
  ;
  ** FORMAT: cig_yearsf **;
  ** FOR VARIABLE: cig_years **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value cig_yearsf
    .F = "No Form"
    .M = "Not Answered"
    0.5 = "Six Months"
  ;
  ** FORMAT: cigarf **;
  ** FOR VARIABLE: cigar **;
  value cigarf
    .F = "No Form"
    .M = "Not Answered"
    0 = "Never"
    1 = "Current Cigar Smoker"
    2 = "Former Cigar Smoker"
  ;
  ** FORMAT: cigpd_ff **;
  ** FOR VARIABLE: cigpd_f **;
  value cigpd_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "0"
    1 = "1-10"
    2 = "11-20"
    3 = "21-30"
    4 = "31-40"
    5 = "41-60"
    6 = "61-80"
    7 = "81+"
  ;
  ** FORMAT: filtered_ff **;
  ** FOR VARIABLE: filtered_f **;
  value filtered_ff
    .F = "No Form"
    .M = "Not Answered"
    .N = "Not Applicable"
    1 = "Filter"
    2 = "Non-Filter"
    3 = "About Equal"
  ;
  ** FORMAT: pack_yearsf **;
  ** FOR VARIABLE: pack_years **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value pack_yearsf
    .F = "No Form"
    .M = "Missing"
  ;
  ** FORMAT: pipef **;
  ** FOR VARIABLE: pipe **;
  value pipef
    .F = "No Form"
    .M = "Not Answered"
    0 = "Never"
    1 = "Current Pipe Smoker"
    2 = "Former Pipe Smoker"
  ;
  ** FORMAT: rsmoker_ff **;
  ** FOR VARIABLE: rsmoker_f **;
  value rsmoker_ff
    .F = "No Form"
    .M = "Not Answered"
    .N = "Not Applicable"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: smokea_ff **;
  ** FOR VARIABLE: smokea_f **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value smokea_ff
    .F = "No Form"
    .M = "Not Answered Or Inconsistent Data"
    .N = "Not Applicable"
    .R = "Age not in reasonable range."
  ;
  ** FORMAT: smoked_ff **;
  ** FOR VARIABLE: smoked_f **;
  value smoked_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: ssmokea_ff **;
  ** FOR VARIABLE: ssmokea_f **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value ssmokea_ff
    .F = "No Form"
    .M = "Not Answered Or Inconsistent Data"
    .N = "Not Applicable"
    .R = "Age not in reasonable range."
  ;
  ** FORMAT: brothersf **;
  ** FOR VARIABLE: brothers **;
  value brothersf
    .F = "No Form"
    .M = "Not Answered"
    0 = "None"
    1 = "One"
    2 = "Two"
    3 = "Three"
    4 = "Four"
    5 = "Five"
    6 = "Six"
    7 = "Seven Or More"
  ;
  ** FORMAT: fh_cancerf **;
  ** FOR VARIABLE: fh_cancer **;
  value fh_cancerf
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sistersf **;
  ** FOR VARIABLE: sisters **;
  value sistersf
    .F = "No Form"
    .M = "Not Answered"
    0 = "None"
    1 = "One"
    2 = "Two"
    3 = "Three"
    4 = "Four"
    5 = "Five"
    6 = "Six"
    7 = "Seven Or More"
  ;
  ** FORMAT: breast_fhf **;
  ** FOR VARIABLE: breast_fh **;
  value breast_fhf
    .F = "No Form"
    .M = "Missing"
    0 = "No"
    1 = "Yes, Immediate Female Family Member"
    2 = "Male Relative Only"
    9 = "Possibly - Relative Or Cancer Type Not Clear"
  ;
  ** FORMAT: breast_fh_agef **;
  ** FOR VARIABLE: breast_fh_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_fh_agef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Missing"
    .N = "Not Applicable"
  ;
  ** FORMAT: breast_fh_cntf **;
  ** FOR VARIABLE: breast_fh_cnt **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_fh_cntf
    .F = "No Form"
    .M = "Missing"
  ;
  ** FORMAT: bmi_20f **;
  ** FOR VARIABLE: bmi_20 **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value bmi_20f
    .F = "No Form"
    .M = "Not Answered"
    .R = "Height Or Weight Not In Reasonable Range"
  ;
  ** FORMAT: bmi_20cf **;
  ** FOR VARIABLE: bmi_20c **;
  value bmi_20cf
    .F = "No Form"
    .M = "Not Answered"
    .R = "Height Or Weight Not In Reasonable Range"
    1 = "0-18.5"
    2 = "18.5-25"
    3 = "25-30"
    4 = "30+"
  ;
  ** FORMAT: bmi_50f **;
  ** FOR VARIABLE: bmi_50 **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value bmi_50f
    .F = "No Form"
    .M = "Not Answered"
    .R = "Height Or Weight Not In Reasonable Range"
  ;
  ** FORMAT: bmi_50cf **;
  ** FOR VARIABLE: bmi_50c **;
  value bmi_50cf
    .F = "No Form"
    .M = "Not Answered"
    .R = "Height Or Weight Not In Reasonable Range"
    1 = "0-18.5"
    2 = "18.5-25"
    3 = "25-30"
    4 = "30+"
  ;
  ** FORMAT: bmi_curcf **;
  ** FOR VARIABLE: bmi_curc **;
  value bmi_curcf
    .F = "No Form"
    .M = "Not Answered"
    .R = "Height Or Weight Not In Reasonable Range"
    1 = "0-18.5"
    2 = "18.5-25"
    3 = "25-30"
    4 = "30+"
  ;
  ** FORMAT: bmi_currf **;
  ** FOR VARIABLE: bmi_curr **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value bmi_currf
    .F = "No Form"
    .M = "Not Answered"
    .R = "Height Or Weight Not In Reasonable Range"
  ;
  ** FORMAT: height_ff **;
  ** FOR VARIABLE: height_f **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value height_ff
    .F = "No Form"
    .M = "Missing"
    .R = "Height Out Of Range"
  ;
  ** FORMAT: weight20_ff **;
  ** FOR VARIABLE: weight20_f **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value weight20_ff
    .F = "No Form"
    .M = "Missing"
    .R = "Weight Out Of Range"
  ;
  ** FORMAT: weight50_ff **;
  ** FOR VARIABLE: weight50_f **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value weight50_ff
    .F = "No Form"
    .M = "Missing"
    .R = "Weight Out Of Range"
  ;
  ** FORMAT: weight_ff **;
  ** FOR VARIABLE: weight_f **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value weight_ff
    .F = "No Form"
    .M = "Missing"
    .R = "Weight Out Of Range"
  ;
  ** FORMAT: aspf **;
  ** FOR VARIABLE: asp **;
  value aspf
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: asppdf **;
  ** FOR VARIABLE: asppd **;
  value asppdf
    .F = "No Form"
    .M = "Not Answered"
    0 = "None"
    1 = "1/Day"
    2 = "2+/Day"
    3 = "1/Week"
    4 = "2/Week"
    5 = "3-4/Week"
    6 = "<2/Month"
    7 = "2-3/Month"
  ;
  ** FORMAT: ibupf **;
  ** FOR VARIABLE: ibup **;
  value ibupf
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: ibuppdf **;
  ** FOR VARIABLE: ibuppd **;
  value ibuppdf
    .F = "No Form"
    .M = "Not Answered"
    0 = "None"
    1 = "1/Day"
    2 = "2+/Day"
    3 = "1/Week"
    4 = "2/Week"
    5 = "3-4/Week"
    6 = "<2/Month"
    7 = "2-3/Month"
  ;
  ** FORMAT: arthrit_ff **;
  ** FOR VARIABLE: arthrit_f **;
  value arthrit_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: bronchit_ff **;
  ** FOR VARIABLE: bronchit_f **;
  value bronchit_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: colon_comorbidityf **;
  ** FOR VARIABLE: colon_comorbidity **;
  value colon_comorbidityf
    .F = "No Form"
    .M = "Missing"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: diabetes_ff **;
  ** FOR VARIABLE: diabetes_f **;
  value diabetes_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: divertic_ff **;
  ** FOR VARIABLE: divertic_f **;
  value divertic_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: emphys_ff **;
  ** FOR VARIABLE: emphys_f **;
  value emphys_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: gallblad_ff **;
  ** FOR VARIABLE: gallblad_f **;
  value gallblad_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: hearta_ff **;
  ** FOR VARIABLE: hearta_f **;
  value hearta_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: hyperten_ff **;
  ** FOR VARIABLE: hyperten_f **;
  value hyperten_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: liver_comorbidityf **;
  ** FOR VARIABLE: liver_comorbidity **;
  value liver_comorbidityf
    .F = "No Form"
    .M = "Missing"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: osteopor_ff **;
  ** FOR VARIABLE: osteopor_f **;
  value osteopor_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: polyps_ff **;
  ** FOR VARIABLE: polyps_f **;
  value polyps_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: stroke_ff **;
  ** FOR VARIABLE: stroke_f **;
  value stroke_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: bbdf **;
  ** FOR VARIABLE: bbd **;
  value bbdf
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: bcontr_ff **;
  ** FOR VARIABLE: bcontr_f **;
  value bcontr_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: bcontraf **;
  ** FOR VARIABLE: bcontra **;
  value bcontraf
    .F = "No Form"
    .M = "Not Answered"
    .N = "Not Applicable"
    1 = "<30"
    2 = "30-39"
    3 = "40-49"
    4 = "50+"
  ;
  ** FORMAT: bcontrtf **;
  ** FOR VARIABLE: bcontrt **;
  value bcontrtf
    .F = "No Form"
    .M = "Not Answered"
    0 = "Not Applicable"
    1 = "10+ Years"
    2 = "6-9 Years"
    3 = "4-5 Years"
    4 = "2-3 Years"
    5 = "1 Year or Less"
  ;
  ** FORMAT: benign_ovcystf **;
  ** FOR VARIABLE: benign_ovcyst **;
  value benign_ovcystf
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: endometriosisf **;
  ** FOR VARIABLE: endometriosis **;
  value endometriosisf
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: fchildaf **;
  ** FOR VARIABLE: fchilda **;
  value fchildaf
    .F = "No Form"
    .M = "Not Answered"
    .N = "Not Applicable"
    1 = "<16"
    2 = "16-19"
    3 = "20-24"
    4 = "25-29"
    5 = "30-34"
    6 = "35-39"
    7 = "40+"
  ;
  ** FORMAT: fmenstrf **;
  ** FOR VARIABLE: fmenstr **;
  value fmenstrf
    .F = "No Form"
    .M = "Not Answered"
    1 = "<10"
    2 = "10-11"
    3 = "12-13"
    4 = "14-15"
    5 = "16+"
  ;
  ** FORMAT: horm_statf **;
  ** FOR VARIABLE: horm_stat **;
  value horm_statf
    .F = "No Form"
    .M = "Missing"
    0 = "Never"
    1 = "Current"
    2 = "Former"
    3 = "Unknown Whether Current Or Former"
    4 = "Doesn't Know If She Ever Took HRT"
  ;
  ** FORMAT: hyster_ff **;
  ** FOR VARIABLE: hyster_f **;
  value hyster_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
    2 = "Don't Know"
  ;
  ** FORMAT: hysteraf **;
  ** FOR VARIABLE: hystera **;
  value hysteraf
    .F = "No Form"
    .M = "Not Answered"
    .N = "Not Applicable"
    1 = "<40"
    2 = "40-44"
    3 = "45-49"
    4 = "50-54"
    5 = "55+"
  ;
  ** FORMAT: livecf **;
  ** FOR VARIABLE: livec **;
  value livecf
    .F = "No Form"
    .M = "Not Answered"
    0 = "Zero"
    1 = "One"
    2 = "Two"
    3 = "Three"
    4 = "Four"
    5 = "Five Or More"
  ;
  ** FORMAT: lmenstrf **;
  ** FOR VARIABLE: lmenstr **;
  value lmenstrf
    .F = "No Form"
    .M = "Not Answered"
    1 = "<40"
    2 = "40-44"
    3 = "45-49"
    4 = "50-54"
    5 = "55+"
  ;
  ** FORMAT: menstrsf **;
  ** FOR VARIABLE: menstrs **;
  value menstrsf
    .F = "No Form"
    .M = "Not Answered"
    1 = "Natural Menopause"
    2 = "Surgery"
    3 = "Radiation"
    4 = "Drug Therapy"
  ;
  ** FORMAT: menstrs_stat_typef **;
  ** FOR VARIABLE: menstrs_stat_type **;
  value menstrs_stat_typef
    .F = "No Form"
    1 = "Natural postmenopausal"
    2 = "Bilateral oophorectomy"
    3 = "Hysterectomy, no bilateral oophorectomy"
    4 = "Surgical, details unclear"
    5 = "Drug therapy"
    6 = "Radiation"
    7 = "Postmenopausal, reason unknown"
    8 = "Menopausal status unknown"
  ;
  ** FORMAT: miscarf **;
  ** FOR VARIABLE: miscar **;
  value miscarf
    .F = "No Form"
    .M = "Not Answered"
    0 = "0"
    1 = "1"
    2 = "2+"
  ;
  ** FORMAT: ovariesr_ff **;
  ** FOR VARIABLE: ovariesr_f **;
  value ovariesr_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "Ovaries Not Removed"
    1 = "One Ovary - Partial"
    2 = "One Ovary - Total"
    3 = "Both Ovaries - Partial"
    4 = "Both Ovaries - Total"
    5 = "Don't Know"
    8 = "Ambiguous"
  ;
  ** FORMAT: post_menopausalf **;
  ** FOR VARIABLE: post_menopausal **;
  value post_menopausalf
    .F = "No form"
    1 = "Definitely post-menopausal"
    2 = "Possibly post-menopausal"
  ;
  ** FORMAT: preg_ff **;
  ** FOR VARIABLE: preg_f **;
  value preg_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
    2 = "Don't Know"
  ;
  ** FORMAT: pregaf **;
  ** FOR VARIABLE: prega **;
  value pregaf
    .F = "No Form"
    .M = "Not Answered"
    .N = "Not Applicable"
    1 = "<15"
    2 = "15-19"
    3 = "20-24"
    4 = "25-29"
    5 = "30-34"
    6 = "35-39"
    7 = "40+"
  ;
  ** FORMAT: pregcf **;
  ** FOR VARIABLE: pregc **;
  value pregcf
    .F = "No Form"
    .M = "Not Answered"
    0 = "None"
    1 = "1"
    2 = "2"
    3 = "3-4"
    4 = "5-9"
    5 = "10+"
  ;
  ** FORMAT: stillbf **;
  ** FOR VARIABLE: stillb **;
  value stillbf
    .F = "No Form"
    .M = "Not Answered"
    0 = "0"
    1 = "1"
    2 = "2+"
  ;
  ** FORMAT: thormf **;
  ** FOR VARIABLE: thorm **;
  value thormf
    .F = "No Form"
    .M = "Not Answered"
    0 = "Not Applicable"
    1 = "10+ Years"
    2 = "6-9 Years"
    3 = "4-5 Years"
    4 = "2-3 Years"
    5 = "<= 1 Year"
  ;
  ** FORMAT: trypregf **;
  ** FOR VARIABLE: trypreg **;
  value trypregf
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: tubalf **;
  ** FOR VARIABLE: tubal **;
  value tubalf
    .F = "No Form"
    .M = "Not Answered"
    0 = "0"
    1 = "1"
    2 = "2+"
  ;
  ** FORMAT: tuballigf **;
  ** FOR VARIABLE: tuballig **;
  value tuballigf
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
    2 = "Don't Know"
  ;
  ** FORMAT: uterine_fibf **;
  ** FOR VARIABLE: uterine_fib **;
  value uterine_fibf
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: curhormf **;
  ** FOR VARIABLE: curhorm **;
  value curhormf
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: horm_ff **;
  ** FOR VARIABLE: horm_f **;
  value horm_ff
    .F = "No Form"
    .M = "Not Answered"
    0 = "No"
    1 = "Yes"
    2 = "Don't Know"
  ;
  ** FORMAT: $bq_buildv **;
  ** FOR VARIABLE: bq_build **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $bq_buildv
  ;
  ** FORMAT: $buildv **;
  ** FOR VARIABLE: build **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $buildv
  ;
  ** FORMAT: build_cancersv **;
  ** FOR VARIABLE: build_cancers **;
  value build_cancersv
    1 = "(1) Trial Only"
  ;
  ** FORMAT: build_death_cutoffv **;
  ** FOR VARIABLE: build_death_cutoff **;
  value build_death_cutoffv
    6 = "(6) Deaths through 2022"
  ;
  ** FORMAT: build_incidence_cutoffv **;
  ** FOR VARIABLE: build_incidence_cutoff **;
  value build_incidence_cutoffv
    1 = "(1) Cancer Incidence Data Through 2009"
  ;
  ** FORMAT: $dth_buildv **;
  ** FOR VARIABLE: dth_build **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $dth_buildv
  ;
  ** FORMAT: $plco_idv **;
  ** FOR VARIABLE: plco_id **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $plco_idv
  ;
  ** FORMAT: in_tgwas_populationv **;
  ** FOR VARIABLE: in_tgwas_population **;
  value in_tgwas_populationv
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: ph_any_trialv **;
  ** FOR VARIABLE: ph_any_trial **;
  value ph_any_trialv
    0 = "(0) No"
    1 = "(1) Yes"
    9 = "(9) Unknown"
  ;
  ** FORMAT: ph_breast_trialv **;
  ** FOR VARIABLE: ph_breast_trial **;
  value ph_breast_trialv
    0 = "(0) No"
    1 = "(1) Yes"
    9 = "(9) Unknown"
  ;
  ** FORMAT: entryage_bqv **;
  ** FOR VARIABLE: entryage_bq **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entryage_bqv
    .F = "(.F) No Form"
  ;
  ** FORMAT: entrydays_bqv **;
  ** FOR VARIABLE: entrydays_bq **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entrydays_bqv
    .F = "(.F) No Form"
  ;
  ** FORMAT: breast_eligible_bqv **;
  ** FOR VARIABLE: breast_eligible_bq **;
  value breast_eligible_bqv
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: ph_any_bqv **;
  ** FOR VARIABLE: ph_any_bq **;
  value ph_any_bqv
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
    9 = "(9) Unknown"
  ;
  ** FORMAT: ph_breast_bqv **;
  ** FOR VARIABLE: ph_breast_bq **;
  value ph_breast_bqv
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
    9 = "(9) Unknown"
  ;
  ** FORMAT: breast_eligible_dhqv **;
  ** FOR VARIABLE: breast_eligible_dhq **;
  value breast_eligible_dhqv
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: entryage_dhqv **;
  ** FOR VARIABLE: entryage_dhq **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entryage_dhqv
    .F = "(.F) No Form"
  ;
  ** FORMAT: entrydays_dhqv **;
  ** FOR VARIABLE: entrydays_dhq **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entrydays_dhqv
    .F = "(.F) No Form"
  ;
  ** FORMAT: ph_any_dhqv **;
  ** FOR VARIABLE: ph_any_dhq **;
  value ph_any_dhqv
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
    9 = "(9) Unknown"
  ;
  ** FORMAT: ph_breast_dhqv **;
  ** FOR VARIABLE: ph_breast_dhq **;
  value ph_breast_dhqv
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
    9 = "(9) Unknown"
  ;
  ** FORMAT: breast_eligible_dqxv **;
  ** FOR VARIABLE: breast_eligible_dqx **;
  value breast_eligible_dqxv
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: entryage_dqxv **;
  ** FOR VARIABLE: entryage_dqx **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entryage_dqxv
    .F = "(.F) No Form"
  ;
  ** FORMAT: entrydays_dqxv **;
  ** FOR VARIABLE: entrydays_dqx **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entrydays_dqxv
    .F = "(.F) No Form"
  ;
  ** FORMAT: ph_any_dqxv **;
  ** FOR VARIABLE: ph_any_dqx **;
  value ph_any_dqxv
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
    9 = "(9) Unknown"
  ;
  ** FORMAT: ph_breast_dqxv **;
  ** FOR VARIABLE: ph_breast_dqx **;
  value ph_breast_dqxv
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
    9 = "(9) Unknown"
  ;
  ** FORMAT: breast_eligible_sqxv **;
  ** FOR VARIABLE: breast_eligible_sqx **;
  value breast_eligible_sqxv
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: entryage_sqxv **;
  ** FOR VARIABLE: entryage_sqx **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entryage_sqxv
    .F = "(.F) No Form"
  ;
  ** FORMAT: entrydays_sqxv **;
  ** FOR VARIABLE: entrydays_sqx **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entrydays_sqxv
    .F = "(.F) No Form"
  ;
  ** FORMAT: ph_any_sqxv **;
  ** FOR VARIABLE: ph_any_sqx **;
  value ph_any_sqxv
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
    9 = "(9) Unknown"
  ;
  ** FORMAT: ph_breast_sqxv **;
  ** FOR VARIABLE: ph_breast_sqx **;
  value ph_breast_sqxv
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
    9 = "(9) Unknown"
  ;
  ** FORMAT: entryage_muqv **;
  ** FOR VARIABLE: entryage_muq **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entryage_muqv
    .F = "(.F) No Form"
  ;
  ** FORMAT: entrydays_muqv **;
  ** FOR VARIABLE: entrydays_muq **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value entrydays_muqv
    .F = "(.F) No Form"
  ;
  ** FORMAT: ph_any_muqv **;
  ** FOR VARIABLE: ph_any_muq **;
  value ph_any_muqv
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
    9 = "(9) Unknown"
  ;
  ** FORMAT: ph_breast_muqv **;
  ** FOR VARIABLE: ph_breast_muq **;
  value ph_breast_muqv
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
    9 = "(9) Unknown"
  ;
  ** FORMAT: breast_exitagev **;
  ** FOR VARIABLE: breast_exitage **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_exitagev
  ;
  ** FORMAT: breast_exitdaysv **;
  ** FOR VARIABLE: breast_exitdays **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_exitdaysv
  ;
  ** FORMAT: breast_exitstatv **;
  ** FOR VARIABLE: breast_exitstat **;
  value breast_exitstatv
    0 = "(0) No Time at Risk"
    1 = "(1) Confirmed Cancer"
    3 = "(3) Last Participant Contact Prior to Unconfirmed Report"
    4 = "(4) Last Participant Contact"
    5 = "(5) Death"
    6 = "(6) Date Lost, Prior to Death"
    8 = "(8) Cancer Free at Cutoff"
    9 = "(9) Post-2009 Death, Exit At 12/31/09"
  ;
  ** FORMAT: fstcan_exitagev **;
  ** FOR VARIABLE: fstcan_exitage **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value fstcan_exitagev
  ;
  ** FORMAT: fstcan_exitdaysv **;
  ** FOR VARIABLE: fstcan_exitdays **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value fstcan_exitdaysv
  ;
  ** FORMAT: fstcan_exitstatv **;
  ** FOR VARIABLE: fstcan_exitstat **;
  value fstcan_exitstatv
    0 = "(0) No Time at Risk"
    1 = "(1) Confirmed Cancer"
    3 = "(3) Last Participant Contact Prior to Unconfirmed Report"
    4 = "(4) Last Participant Contact"
    5 = "(5) Death"
    6 = "(6) Date Lost, Prior to Death"
    8 = "(8) Cancer Free at Cutoff"
    9 = "(9) Post-2009 Death, Exit At 12/31/09"
  ;
  ** FORMAT: mortality_exitagev **;
  ** FOR VARIABLE: mortality_exitage **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value mortality_exitagev
  ;
  ** FORMAT: mortality_exitdaysv **;
  ** FOR VARIABLE: mortality_exitdays **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value mortality_exitdaysv
  ;
  ** FORMAT: mortality_exitstatv **;
  ** FOR VARIABLE: mortality_exitstat **;
  value mortality_exitstatv
    1 = "(1) Death"
    2 = "(2) Last NDI/Cutoff"
    3 = "(3) Refusal"
    4 = "(4) Other"
  ;
  ** FORMAT: agev **;
  ** FOR VARIABLE: age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value agev
  ;
  ** FORMAT: agelevelv **;
  ** FOR VARIABLE: agelevel **;
  value agelevelv
    0 = "(0) <= 59"
    1 = "(1) 60-64"
    2 = "(2) 65-69"
    3 = "(3) >= 70"
  ;
  ** FORMAT: armv **;
  ** FOR VARIABLE: arm **;
  value armv
    1 = "(1) Intervention"
    2 = "(2) Control"
  ;
  ** FORMAT: centerv **;
  ** FOR VARIABLE: center **;
  value centerv
    1 = "(1) University of Colorado"
    2 = "(2) Georgetown University"
    3 = "(3) Pacific Health Research and Education Institute (Honolulu)"
    4 = "(4) Henry Ford Health System"
    5 = "(5) University of Minnesota"
    6 = "(6) Washington University in St Louis"
    8 = "(8) University of Pittsburgh"
    9 = "(9) University of Utah"
    10 = "(10) Marshfield Clinic Research Foundation"
    11 = "(11) University of Alabama at Birmingham"
  ;
  ** FORMAT: rndyearv **;
  ** FOR VARIABLE: rndyear **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value rndyearv
  ;
  ** FORMAT: sexv **;
  ** FOR VARIABLE: sex **;
  value sexv
    2 = "(2) Female"
  ;
  ** FORMAT: breast_annyrv **;
  ** FOR VARIABLE: breast_annyr **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_annyrv
    .N = "(.N) Not applicable"
  ;
  ** FORMAT: breast_cancerv **;
  ** FOR VARIABLE: breast_cancer **;
  value breast_cancerv
    0 = "(0) No Confirmed Cancer"
    1 = "(1) Confirmed Cancer"
  ;
  ** FORMAT: breast_cancer_diagdaysv **;
  ** FOR VARIABLE: breast_cancer_diagdays **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_cancer_diagdaysv
    .N = "(.N) Not Applicable"
  ;
  ** FORMAT: breast_cancer_firstv **;
  ** FOR VARIABLE: breast_cancer_first **;
  value breast_cancer_firstv
    .N = "(.N) Not Applicable"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: breast_dxprocv **;
  ** FOR VARIABLE: breast_dxproc **;
  value breast_dxprocv
    .F = "(.F) No BCS Form"
    1 = "(1) FNA"
    2 = "(2) Excisional Biopsy"
    3 = "(3) Incisional Biopsy"
    4 = "(4) Core Biopsy"
    11 = "(11) Other Breast Biopsy, Yielding Tissue"
    12 = "(12) Other Breast Biopsy Yielding Cytology"
    13 = "(13) Other Organ (Non Breast) Biopsy Yielding Tissue"
    14 = "(14) Other Organ (Non Breast) Biopsy Yielding Cytology"
    15 = "(15) Lymph Node Biopsy Yielding Tissue"
    16 = "(16) Lymph Node Biopsy Yielding Cytology"
    17 = "(17) Other Biopsy, Yielding Tissue (Specify)"
    18 = "(18) Other Biopsy, Yielding Cytology (Specify)"
    19 = "(19) No Biopsy Performed, Radiologic/Clinical Diagnosis"
    99 = "(99) Unknown, Not Recorded, Or Cannot Be Assesssed"
  ;
  ** FORMAT: breast_num_cancersv **;
  ** FOR VARIABLE: breast_num_cancers **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_num_cancersv
  ;
  ** FORMAT: breast_reasonv **;
  ** FOR VARIABLE: breast_reason **;
  value breast_reasonv
    .F = "(.F) No BCS Form"
    1 = "(1) Screen Derived (Occult)"
    2 = "(2) Symptomatic"
    9 = "(9) Other"
  ;
  ** FORMAT: breast_resect_procv **;
  ** FOR VARIABLE: breast_resect_proc **;
  value breast_resect_procv
    .F = "(.F) No BCS Form"
    1 = "(1) Lumpectomy"
    2 = "(2) Mastectomy"
    3 = "(3) Biopsy Only"
    4 = "(4) Other, Specify"
  ;
  ** FORMAT: has_bcsv **;
  ** FOR VARIABLE: has_bcs **;
  value has_bcsv
    0 = "(0) False"
    1 = "(1) True"
  ;
  ** FORMAT: breast_behaviorv **;
  ** FOR VARIABLE: breast_behavior **;
  value breast_behaviorv
    .F = "(.F) No Form"
    .N = "(.N) Not Applicable"
    2 = "(2) In Situ"
    3 = "(3) Malignant, Primary Site"
  ;
  ** FORMAT: breast_er_statusv **;
  ** FOR VARIABLE: breast_er_status **;
  value breast_er_statusv
    .F = "(.F) No BCS Form"
    1 = "(1) Negative"
    2 = "(2) Equivocal - Positive Cells Within Range of 1-9%"
    3 = "(3) Positive"
    4 = "(4) Indeterminant"
    5 = "(5) Not Available"
    6 = "(6) Ordered, No Results"
    7 = "(7) Not Ordered"
  ;
  ** FORMAT: breast_estrogen_quantv **;
  ** FOR VARIABLE: breast_estrogen_quant **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_estrogen_quantv
    .F = "(.F) No BCS Form"
    .M = "(.M) Missing"
  ;
  ** FORMAT: breast_gradev **;
  ** FOR VARIABLE: breast_grade **;
  value breast_gradev
    .N = "(.N) Not Applicable"
    1 = "(1) Well Differentiated; Grade I"
    2 = "(2) Moderately Differentiated; Grade II"
    3 = "(3) Poorly Differentiated; Grade III"
    4 = "(4) Undifferentiated; Grade IV"
    9 = "(9) Not Determined/Stated/or Applicable"
  ;
  ** FORMAT: breast_her2_statv **;
  ** FOR VARIABLE: breast_her2_stat **;
  value breast_her2_statv
    .F = "(.F) No BCS Form"
    0 = "(0) 0"
    1 = "(1) 1+"
    2 = "(2) 2+"
    3 = "(3) 3+"
    8 = "(8) Not Ordered"
    9 = "(9) Ordered, No Results"
  ;
  ** FORMAT: breast_her2fish_ratiov **;
  ** FOR VARIABLE: breast_her2fish_ratio **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_her2fish_ratiov
    .F = "(.F) No BCS Form"
    .M = "(.M) Missing"
  ;
  ** FORMAT: breast_her2summv **;
  ** FOR VARIABLE: breast_her2summ **;
  value breast_her2summv
    .F = "(.F) No BCS Form"
    1 = "(1) Positive"
    2 = "(2) Equivocal"
    3 = "(3) Negative"
    4 = "(4) Indeterminant"
    5 = "(5) Ordered, No Results"
  ;
  ** FORMAT: breast_hist_typev **;
  ** FOR VARIABLE: breast_hist_type **;
  value breast_hist_typev
    .F = "(.F) No BCS Form"
    1 = "(1) Lobular"
    2 = "(2) Tubular"
    3 = "(3) Ductal, NOS"
    4 = "(4) Other"
  ;
  ** FORMAT: breast_morphologyv **;
  ** FOR VARIABLE: breast_morphology **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_morphologyv
    .F = "(.F) No Form"
    .N = "(.N) Not Applicable"
  ;
  ** FORMAT: breast_pr_statusv **;
  ** FOR VARIABLE: breast_pr_status **;
  value breast_pr_statusv
    .F = "(.F) No BCS Form"
    1 = "(1) Negative"
    2 = "(2) Equivocal - Positive Cells Within Range of 1-9%"
    3 = "(3) Positive"
    4 = "(4) Indeterminant"
    5 = "(5) Not Available"
    6 = "(6) Ordered, No Results"
    7 = "(7) Not Ordered"
  ;
  ** FORMAT: breast_progest_quantv **;
  ** FOR VARIABLE: breast_progest_quant **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_progest_quantv
    .F = "(.F) No BCS Form"
    .M = "(.M) Missing"
    999 = "(999) Not Available"
  ;
  ** FORMAT: breast_stagev **;
  ** FOR VARIABLE: breast_stage **;
  value breast_stagev
    .F = "(.F) No Form"
    .M = "(.M) Missing Data"
    0 = "(0) Stage 0"
    100 = "(100) Stage I"
    210 = "(210) Stage IIA"
    220 = "(220) Stage IIB"
    310 = "(310) Stage IIIA"
    320 = "(320) Stage IIIB"
    400 = "(400) Stage IV"
  ;
  ** FORMAT: breast_stage_7ev **;
  ** FOR VARIABLE: breast_stage_7e **;
  value breast_stage_7ev
    .F = "(.F) No Form"
    .M = "(.M) Missing Data"
    0 = "(0) Stage 0"
    100 = "(100) Stage I"
    110 = "(110) Stage IA"
    210 = "(210) Stage IIA"
    220 = "(220) Stage IIB"
    300 = "(300) Stage III"
    310 = "(310) Stage IIIA"
    320 = "(320) Stage IIIB"
    330 = "(330) Stage IIIC"
    400 = "(400) Stage IV"
  ;
  ** FORMAT: breast_stage_mv **;
  ** FOR VARIABLE: breast_stage_m **;
  value breast_stage_mv
    .F = "(.F) No Form"
    .M = "(.M) Missing Data"
    0 = "(0) M0"
    100 = "(100) M1"
    999 = "(999) MX"
  ;
  ** FORMAT: breast_stage_nv **;
  ** FOR VARIABLE: breast_stage_n **;
  value breast_stage_nv
    .F = "(.F) No Form"
    .M = "(.M) Missing Data"
    0 = "(0) N0"
    110 = "(110) N1a"
    120 = "(120) N1b"
    200 = "(200) N2"
    300 = "(300) N3"
    999 = "(999) NX"
  ;
  ** FORMAT: breast_stage_tv **;
  ** FOR VARIABLE: breast_stage_t **;
  value breast_stage_tv
    .F = "(.F) No Form"
    .M = "(.M) Missing Data"
    20 = "(20) Tis"
    100 = "(100) T1"
    110 = "(110) T1a"
    120 = "(120) T1b"
    130 = "(130) T1c"
    180 = "(180) T1mi"
    200 = "(200) T2"
    300 = "(300) T3"
    400 = "(400) T4"
    410 = "(410) T4a"
    420 = "(420) T4b"
    430 = "(430) T4c"
    440 = "(440) T4d"
    999 = "(999) TX"
  ;
  ** FORMAT: breast_tmrsizev **;
  ** FOR VARIABLE: breast_tmrsize **;
  value breast_tmrsizev
    .F = "(.F) No BCS Form"
    .M = "(.M) Missing"
    1 = "(1) 0 cm to Less Than 2 cm"
    2 = "(2) 2 cm to Less Than 5 cm"
    3 = "(3) 5 cm or More"
  ;
  ** FORMAT: $breast_topographyv **;
  ** FOR VARIABLE: breast_topography **;
  value $breast_topographyv
    " " = "( ) Not Applicable, No Form, or Missing"
    "C500" = "(C500) Nipple"
    "C501" = "(C501) Central Portion of Breast"
    "C502" = "(C502) Upper Inner Quadrant of Breast"
    "C503" = "(C503) Lower Inner Quadrant of Breast"
    "C504" = "(C504) Upper Outer Quadrant of Breast"
    "C505" = "(C505) Lower Outer Quadrant of Breast"
    "C506" = "(C506) Axillary Tail of Breast"
    "C508" = "(C508) Overlapping Lesion of Breast"
    "C509" = "(C509) Breast NOS"
  ;
  ** FORMAT: breast_has_deliv_heslide_imgv **;
  ** FOR VARIABLE: breast_has_deliv_heslide_img **;
  value breast_has_deliv_heslide_imgv
    .N = "(.N) Not Applicable"
    1 = "(1) Yes"
  ;
  ** FORMAT: breast_has_deliv_ihcmarker_imgv **;
  ** FOR VARIABLE: breast_has_deliv_ihcmarker_img **;
  value breast_has_deliv_ihcmarker_imgv
    .N = "(.N) Not Applicable"
    1 = "(1) Yes"
  ;
  ** FORMAT: breast_num_heslide_imgsv **;
  ** FOR VARIABLE: breast_num_heslide_imgs **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_num_heslide_imgsv
    .N = "(.N) Not Applicable"
  ;
  ** FORMAT: breast_num_ihcmarker_imgsv **;
  ** FOR VARIABLE: breast_num_ihcmarker_imgs **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_num_ihcmarker_imgsv
    .N = "(.N) Not Applicable"
  ;
  ** FORMAT: dth_daysv **;
  ** FOR VARIABLE: dth_days **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value dth_daysv
    .N = "(.N) Not applicable"
  ;
  ** FORMAT: is_deadv **;
  ** FOR VARIABLE: is_dead **;
  value is_deadv
    0 = "(0) Not Confirmed Dead"
    1 = "(1) Dead"
  ;
  ** FORMAT: is_dead_with_codv **;
  ** FOR VARIABLE: is_dead_with_cod **;
  value is_dead_with_codv
    0 = "(0) Not Confirmed Dead"
    1 = "(1) Dead"
  ;
  ** FORMAT: d_cancersitev **;
  ** FOR VARIABLE: d_cancersite **;
  value d_cancersitev
    .F = "(.F) No Form"
    .N = "(.N) Not Dead"
    2 = "(2) Lung"
    3 = "(3) Colorectal"
    4 = "(4) Ovarian, Peritoneal, and Fallopian Tube"
    11 = "(11) Pancreas"
    12 = "(12) Melanoma of the Skin"
    13 = "(13) Bladder"
    14 = "(14) Breast"
    15 = "(15) Hematopoietic"
    16 = "(16) Endometrial"
    17 = "(17) Glioma"
    18 = "(18) Renal"
    19 = "(19) Thyroid"
    20 = "(20) Head and Neck"
    21 = "(21) Liver"
    23 = "(23) Upper-Gastrointestinal"
    24 = "(24) Biliary"
    99 = "(99) Other Cancer"
    999 = "(999) Not Cancer"
  ;
  ** FORMAT: d_cause_of_deathv **;
  ** FOR VARIABLE: d_cause_of_death **;
  value d_cause_of_deathv
    .F = "(.F) No Form"
    .N = "(.N) Not applicable"
    2 = "(2) Lung"
    3 = "(3) Colorectal"
    4 = "(4) Ovarian, Peritoneal, and Fallopian Tube"
    11 = "(11) Pancreas"
    12 = "(12) Melanoma of the Skin"
    13 = "(13) Bladder"
    14 = "(14) Breast"
    15 = "(15) Hematopoietic"
    16 = "(16) Endometrial"
    17 = "(17) Glioma"
    18 = "(18) Renal"
    19 = "(19) Thyroid"
    20 = "(20) Head and Neck"
    21 = "(21) Liver"
    23 = "(23) Upper-Gastrointestinal"
    24 = "(24) Biliary"
    26 = "(26) Other Neoplasm"
    100 = "(100) Ischemic Heart Disease"
    101 = "(101) Cerebrovascular Accident"
    102 = "(102) Other Circulatory Disease"
    103 = "(103) Respiratory Illness"
    104 = "(104) Digestive Disease"
    105 = "(105) Infectious Disease"
    106 = "(106) Endocrine, Nutritional and Metabolic Diseases, and Immunity Disorders"
    107 = "(107) Diseases of the Nervous System"
    108 = "(108) Accident"
    109 = "(109) Other"
    200 = "(200) Covid death"
  ;
  ** FORMAT: d_seer_deathv **;
  ** FOR VARIABLE: d_seer_death **;
  value d_seer_deathv
    .F = "(.F) No Form"
    .N = "(.N) Not Applicable"
    2 = "(2) Lung"
    3 = "(3) Colorectal"
    4 = "(4) Ovarian"
    5 = "(5) Peritoneal"
    6 = "(6) Fallopian Tube"
    11 = "(11) Pancreas"
    12 = "(12) Melanoma of the Skin"
    13 = "(13) Bladder"
    14 = "(14) Breast"
    15 = "(15) Hematopoietic"
    16 = "(16) Endometrial"
    17 = "(17) Glioma"
    18 = "(18) Renal"
    19 = "(19) Thyroid"
    20 = "(20) Head and Neck"
    21 = "(21) Liver"
    23 = "(23) Upper-Gastrointestinal"
    24 = "(24) Biliary"
    21030 = "(21030) Small Intestine"
    21042 = "(21042) Colon: Appendix"
    21049 = "(21049) Colon: Large Intestine, NOS"
    21060 = "(21060) Anus, Anal Canal, and Anorectum"
    21110 = "(21110) Retroperitoneum"
    21130 = "(21130) Other Digestive Organs"
    22050 = "(22050) Pleura"
    22060 = "(22060) Trachea, Mediastinum and Other Resp Organs"
    23000 = "(23000) Bones and Joints"
    24000 = "(24000) Soft Tissue including Heart"
    25020 = "(25020) Other Non-Epithelial Skin"
    27010 = "(27010) Cervix Uteri"
    27050 = "(27050) Vagina"
    27060 = "(27060) Vulva"
    27070 = "(27070) Other Female Genital Organs"
    29030 = "(29030) Ureter"
    29040 = "(29040) Other Urinary Organs"
    30000 = "(30000) Eye and Orbit"
    32020 = "(32020) Other Endocrine including Thymus"
    37000 = "(37000) Miscellaneous"
    38000 = "(38000) In situ, benign or unknown behavior neoplasm"
    50030 = "(50030) Septicemia"
    50040 = "(50040) Other Infectious and Parasitic Diseases"
    50050 = "(50050) Diabetes Mellitus"
    50051 = "(50051) Alzheimers"
    50060 = "(50060) Diseases of Heart"
    50070 = "(50070) Hypertension without Heart Disease"
    50080 = "(50080) Cerebrovascular Diseases"
    50090 = "(50090) Atherosclerosis"
    50100 = "(50100) Aortic Aneurysm and Dissection"
    50110 = "(50110) Other Diseases of Arteries, Arterioles, Capillaries"
    50120 = "(50120) Pneumonia and Influenza"
    50130 = "(50130) Chronic Obstructive Pulmonary Disease and Allied Cond."
    50140 = "(50140) Stomach and Duodenal Ulcers"
    50150 = "(50150) Chronic Liver Disease and Cirrhosis"
    50160 = "(50160) Nephritis, Nephrotic Syndrome and Nephrosis"
    50180 = "(50180) Congenital Anomalies"
    50200 = "(50200) Symptoms, Signs and Ill-Defined Conditions"
    50300 = "(50300) Other death"
    60000 = "(60000) Unnatural Death"
    60001 = "(60001) All other endocrine and metabolic diseases and immunity disorders"
    60002 = "(60002) All other diseases of blood and blood-forming organs"
    60003 = "(60003) Senile and presenile organic psychotic conditions"
    60004 = "(60004) All other psychoses"
    60005 = "(60005) Parkinson’s disease"
    60006 = "(60006) Other hereditary and degenerative diseases of the central nervous system"
    60007 = "(60007) Other diseases of the nervous system"
    60008 = "(60008) Pneumoconioses and other lung diseases due to external agents"
    60009 = "(60009) All other diseases of respiratory system"
    60010 = "(60010) All other noninfective gastroenteritis and colitis"
    60011 = "(60011) All other diseases of digestive system"
    60012 = "(60012) All other diseases of urinary system"
    70000 = "(70000) Covid death"
  ;
  ** FORMAT: d_seercat_deathv **;
  ** FOR VARIABLE: d_seercat_death **;
  value d_seercat_deathv
    .F = "(.F) No Form"
    .N = "(.N) Not Dead"
    2 = "(2) Lung"
    3 = "(3) Colorectal"
    4 = "(4) Ovarian"
    5 = "(5) Peritoneal"
    6 = "(6) Fallopian Tube"
    11 = "(11) Pancreas"
    12 = "(12) Melanoma of the Skin"
    13 = "(13) Bladder"
    14 = "(14) Breast"
    15 = "(15) Hematopoietic"
    16 = "(16) Endometrial"
    17 = "(17) Glioma"
    18 = "(18) Renal"
    19 = "(19) Thyroid"
    20 = "(20) Head and Neck"
    21 = "(21) Liver"
    23 = "(23) Upper-Gastrointestinal"
    24 = "(24) Biliary"
    112 = "(112) Digestive System"
    113 = "(113) Respiratory System"
    114 = "(114) Bones and Joints"
    115 = "(115) Soft Tissue including Heart"
    116 = "(116) Skin excluding Basal and Squamous"
    118 = "(118) Female Genital System"
    120 = "(120) Urinary System"
    121 = "(121) Eye and Orbit"
    123 = "(123) Endocrine System"
    129 = "(129) Miscellaneous"
    131 = "(131) In situ, benign or unknown behavior neoplasm"
    135 = "(135) Septicemia"
    136 = "(136) Other Infectious and Parasitic Diseases"
    137 = "(137) Diabetes Mellitus"
    138 = "(138) Alzheimers"
    139 = "(139) Diseases of Heart"
    140 = "(140) Hypertension without Heart Disease"
    141 = "(141) Cerebrovascular Diseases"
    142 = "(142) Atherosclerosis"
    143 = "(143) Aortic Aneurysm and Dissection"
    144 = "(144) Other Diseases of Arteries, Arterioles, Capillaries"
    145 = "(145) Pneumonia and Influenza"
    146 = "(146) Chronic Obstructive Pulmonary Disease and Allied Cond."
    147 = "(147) Stomach and Duodenal Ulcers"
    148 = "(148) Chronic Liver Disease and Cirrhosis"
    149 = "(149) Nephritis, Nephrotic Syndrome and Nephrosis"
    151 = "(151) Congenital Anomalies"
    153 = "(153) Symptoms, Signs and Ill-Defined Conditions"
    180 = "(180) Covid death"
    199 = "(199) Other death"
    200 = "(200) Unnatural death"
  ;
  ** FORMAT: d_dth_breastv **;
  ** FOR VARIABLE: d_dth_breast **;
  value d_dth_breastv
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: f_cancersitev **;
  ** FOR VARIABLE: f_cancersite **;
  value f_cancersitev
    .F = "(.F) No Form"
    .N = "(.N) Not Dead"
    2 = "(2) Lung"
    3 = "(3) Colorectal"
    4 = "(4) Ovarian, Peritoneal, and Fallopian Tube"
    11 = "(11) Pancreas"
    12 = "(12) Melanoma of the Skin"
    13 = "(13) Bladder"
    14 = "(14) Breast"
    15 = "(15) Hematopoietic"
    16 = "(16) Endometrial"
    17 = "(17) Glioma"
    18 = "(18) Renal"
    19 = "(19) Thyroid"
    20 = "(20) Head and Neck"
    21 = "(21) Liver"
    23 = "(23) Upper-Gastrointestinal"
    24 = "(24) Biliary"
    99 = "(99) Other Cancer"
    999 = "(999) Not Cancer"
  ;
  ** FORMAT: f_cause_of_deathv **;
  ** FOR VARIABLE: f_cause_of_death **;
  value f_cause_of_deathv
    .F = "(.F) No Form"
    .N = "(.N) Not applicable"
    2 = "(2) Lung"
    3 = "(3) Colorectal"
    4 = "(4) Ovarian, Peritoneal, and Fallopian Tube"
    11 = "(11) Pancreas"
    12 = "(12) Melanoma of the Skin"
    13 = "(13) Bladder"
    14 = "(14) Breast"
    15 = "(15) Hematopoietic"
    16 = "(16) Endometrial"
    17 = "(17) Glioma"
    18 = "(18) Renal"
    19 = "(19) Thyroid"
    20 = "(20) Head and Neck"
    21 = "(21) Liver"
    23 = "(23) Upper-Gastrointestinal"
    24 = "(24) Biliary"
    26 = "(26) Other Neoplasm"
    100 = "(100) Ischemic Heart Disease"
    101 = "(101) Cerebrovascular Accident"
    102 = "(102) Other Circulatory Disease"
    103 = "(103) Respiratory Illness"
    104 = "(104) Digestive Disease"
    105 = "(105) Infectious Disease"
    106 = "(106) Endocrine, Nutritional and Metabolic Diseases, and Immunity Disorders"
    107 = "(107) Diseases of the Nervous System"
    108 = "(108) Accident"
    109 = "(109) Other"
    200 = "(200) Covid death"
  ;
  ** FORMAT: f_seer_deathv **;
  ** FOR VARIABLE: f_seer_death **;
  value f_seer_deathv
    .F = "(.F) No Form"
    .N = "(.N) Not Applicable"
    2 = "(2) Lung"
    3 = "(3) Colorectal"
    4 = "(4) Ovarian"
    5 = "(5) Peritoneal"
    6 = "(6) Fallopian Tube"
    11 = "(11) Pancreas"
    12 = "(12) Melanoma of the Skin"
    13 = "(13) Bladder"
    14 = "(14) Breast"
    15 = "(15) Hematopoietic"
    16 = "(16) Endometrial"
    17 = "(17) Glioma"
    18 = "(18) Renal"
    19 = "(19) Thyroid"
    20 = "(20) Head and Neck"
    21 = "(21) Liver"
    23 = "(23) Upper-Gastrointestinal"
    24 = "(24) Biliary"
    21030 = "(21030) Small Intestine"
    21042 = "(21042) Colon: Appendix"
    21049 = "(21049) Colon: Large Intestine, NOS"
    21060 = "(21060) Anus, Anal Canal, and Anorectum"
    21110 = "(21110) Retroperitoneum"
    21130 = "(21130) Other Digestive Organs"
    22050 = "(22050) Pleura"
    22060 = "(22060) Trachea, Mediastinum and Other Resp Organs"
    23000 = "(23000) Bones and Joints"
    24000 = "(24000) Soft Tissue including Heart"
    25020 = "(25020) Other Non-Epithelial Skin"
    27010 = "(27010) Cervix Uteri"
    27050 = "(27050) Vagina"
    27060 = "(27060) Vulva"
    27070 = "(27070) Other Female Genital Organs"
    29030 = "(29030) Ureter"
    29040 = "(29040) Other Urinary Organs"
    30000 = "(30000) Eye and Orbit"
    32020 = "(32020) Other Endocrine including Thymus"
    37000 = "(37000) Miscellaneous"
    38000 = "(38000) In situ, benign or unknown behavior neoplasm"
    50030 = "(50030) Septicemia"
    50040 = "(50040) Other Infectious and Parasitic Diseases"
    50050 = "(50050) Diabetes Mellitus"
    50051 = "(50051) Alzheimers"
    50060 = "(50060) Diseases of Heart"
    50070 = "(50070) Hypertension without Heart Disease"
    50080 = "(50080) Cerebrovascular Diseases"
    50090 = "(50090) Atherosclerosis"
    50100 = "(50100) Aortic Aneurysm and Dissection"
    50110 = "(50110) Other Diseases of Arteries, Arterioles, Capillaries"
    50120 = "(50120) Pneumonia and Influenza"
    50130 = "(50130) Chronic Obstructive Pulmonary Disease and Allied Cond."
    50140 = "(50140) Stomach and Duodenal Ulcers"
    50150 = "(50150) Chronic Liver Disease and Cirrhosis"
    50160 = "(50160) Nephritis, Nephrotic Syndrome and Nephrosis"
    50180 = "(50180) Congenital Anomalies"
    50200 = "(50200) Symptoms, Signs and Ill-Defined Conditions"
    50300 = "(50300) Other death"
    60000 = "(60000) Unnatural Death"
    60001 = "(60001) All other endocrine and metabolic diseases and immunity disorders"
    60002 = "(60002) All other diseases of blood and blood-forming organs"
    60003 = "(60003) Senile and presenile organic psychotic conditions"
    60004 = "(60004) All other psychoses"
    60005 = "(60005) Parkinson’s disease"
    60006 = "(60006) Other hereditary and degenerative diseases of the central nervous system"
    60007 = "(60007) Other diseases of the nervous system"
    60008 = "(60008) Pneumoconioses and other lung diseases due to external agents"
    60009 = "(60009) All other diseases of respiratory system"
    60010 = "(60010) All other noninfective gastroenteritis and colitis"
    60011 = "(60011) All other diseases of digestive system"
    60012 = "(60012) All other diseases of urinary system"
    70000 = "(70000) Covid death"
  ;
  ** FORMAT: f_seercat_deathv **;
  ** FOR VARIABLE: f_seercat_death **;
  value f_seercat_deathv
    .F = "(.F) No Form"
    .N = "(.N) Not Dead"
    2 = "(2) Lung"
    3 = "(3) Colorectal"
    4 = "(4) Ovarian"
    5 = "(5) Peritoneal"
    6 = "(6) Fallopian Tube"
    11 = "(11) Pancreas"
    12 = "(12) Melanoma of the Skin"
    13 = "(13) Bladder"
    14 = "(14) Breast"
    15 = "(15) Hematopoietic"
    16 = "(16) Endometrial"
    17 = "(17) Glioma"
    18 = "(18) Renal"
    19 = "(19) Thyroid"
    20 = "(20) Head and Neck"
    21 = "(21) Liver"
    23 = "(23) Upper-Gastrointestinal"
    24 = "(24) Biliary"
    112 = "(112) Digestive System"
    113 = "(113) Respiratory System"
    114 = "(114) Bones and Joints"
    115 = "(115) Soft Tissue including Heart"
    116 = "(116) Skin excluding Basal and Squamous"
    118 = "(118) Female Genital System"
    120 = "(120) Urinary System"
    121 = "(121) Eye and Orbit"
    123 = "(123) Endocrine System"
    129 = "(129) Miscellaneous"
    131 = "(131) In situ, benign or unknown behavior neoplasm"
    135 = "(135) Septicemia"
    136 = "(136) Other Infectious and Parasitic Diseases"
    137 = "(137) Diabetes Mellitus"
    138 = "(138) Alzheimers"
    139 = "(139) Diseases of Heart"
    140 = "(140) Hypertension without Heart Disease"
    141 = "(141) Cerebrovascular Diseases"
    142 = "(142) Atherosclerosis"
    143 = "(143) Aortic Aneurysm and Dissection"
    144 = "(144) Other Diseases of Arteries, Arterioles, Capillaries"
    145 = "(145) Pneumonia and Influenza"
    146 = "(146) Chronic Obstructive Pulmonary Disease and Allied Cond."
    147 = "(147) Stomach and Duodenal Ulcers"
    148 = "(148) Chronic Liver Disease and Cirrhosis"
    149 = "(149) Nephritis, Nephrotic Syndrome and Nephrosis"
    151 = "(151) Congenital Anomalies"
    153 = "(153) Symptoms, Signs and Ill-Defined Conditions"
    180 = "(180) Covid death"
    199 = "(199) Other death"
    200 = "(200) Unnatural death"
  ;
  ** FORMAT: f_dth_breastv **;
  ** FOR VARIABLE: f_dth_breast **;
  value f_dth_breastv
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: bq_adminmv **;
  ** FOR VARIABLE: bq_adminm **;
  value bq_adminmv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    1 = "(1) Self"
    2 = "(2) Self With Assistance"
    3 = "(3) In-Person Interview By SC Staff"
    4 = "(4) In-Person Interview By Other"
    5 = "(5) Telephone"
  ;
  ** FORMAT: bq_agev **;
  ** FOR VARIABLE: bq_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value bq_agev
    .F = "(.F) No Form"
  ;
  ** FORMAT: bq_compdaysv **;
  ** FOR VARIABLE: bq_compdays **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value bq_compdaysv
    .F = "(.F) No Form"
  ;
  ** FORMAT: bq_returnedv **;
  ** FOR VARIABLE: bq_returned **;
  value bq_returnedv
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: educatv **;
  ** FOR VARIABLE: educat **;
  value educatv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    1 = "(1) Less Than 8 Years"
    2 = "(2) 8-11 Years"
    3 = "(3) 12 Years Or Completed High School"
    4 = "(4) Post High School Training Other Than College"
    5 = "(5) Some College"
    6 = "(6) College Graduate"
    7 = "(7) Postgraduate"
  ;
  ** FORMAT: hispanic_fv **;
  ** FOR VARIABLE: hispanic_f **;
  value hispanic_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) Not Hispanic"
    1 = "(1) Hispanic"
  ;
  ** FORMAT: maritalv **;
  ** FOR VARIABLE: marital **;
  value maritalv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    1 = "(1) Married Or Living As Married"
    2 = "(2) Widowed"
    3 = "(3) Divorced"
    4 = "(4) Separated"
    5 = "(5) Never Married"
  ;
  ** FORMAT: occupatv **;
  ** FOR VARIABLE: occupat **;
  value occupatv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    1 = "(1) Homemaker"
    2 = "(2) Working"
    3 = "(3) Unemployed"
    4 = "(4) Retired"
    5 = "(5) Extended Sick Leave"
    6 = "(6) Disabled"
    7 = "(7) Other"
  ;
  ** FORMAT: race7v **;
  ** FOR VARIABLE: race7 **;
  value race7v
    1 = "(1) White, Non-Hispanic"
    2 = "(2) Black, Non-Hispanic"
    3 = "(3) Hispanic"
    4 = "(4) Asian"
    5 = "(5) Pacific Islander"
    6 = "(6) American Indian"
    7 = "(7) Missing"
  ;
  ** FORMAT: cig_statv **;
  ** FOR VARIABLE: cig_stat **;
  value cig_statv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) Never Smoked Cigarettes"
    1 = "(1) Current Cigarette Smoker"
    2 = "(2) Former Cigarette Smoker"
  ;
  ** FORMAT: cig_stopv **;
  ** FOR VARIABLE: cig_stop **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value cig_stopv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .N = "(.N) Not Applicable"
    0.5 = "(0.5) Six Months"
  ;
  ** FORMAT: cig_yearsv **;
  ** FOR VARIABLE: cig_years **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value cig_yearsv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0.5 = "(0.5) Six Months"
  ;
  ** FORMAT: cigarv **;
  ** FOR VARIABLE: cigar **;
  value cigarv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) Never"
    1 = "(1) Current Cigar Smoker"
    2 = "(2) Former Cigar Smoker"
  ;
  ** FORMAT: cigpd_fv **;
  ** FOR VARIABLE: cigpd_f **;
  value cigpd_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) 0"
    1 = "(1) 1-10"
    2 = "(2) 11-20"
    3 = "(3) 21-30"
    4 = "(4) 31-40"
    5 = "(5) 41-60"
    6 = "(6) 61-80"
    7 = "(7) 81+"
  ;
  ** FORMAT: filtered_fv **;
  ** FOR VARIABLE: filtered_f **;
  value filtered_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .N = "(.N) Not Applicable"
    1 = "(1) Filter"
    2 = "(2) Non-Filter"
    3 = "(3) About Equal"
  ;
  ** FORMAT: pack_yearsv **;
  ** FOR VARIABLE: pack_years **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value pack_yearsv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
  ;
  ** FORMAT: pipev **;
  ** FOR VARIABLE: pipe **;
  value pipev
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) Never"
    1 = "(1) Current Pipe Smoker"
    2 = "(2) Former Pipe Smoker"
  ;
  ** FORMAT: rsmoker_fv **;
  ** FOR VARIABLE: rsmoker_f **;
  value rsmoker_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .N = "(.N) Not Applicable"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: smokea_fv **;
  ** FOR VARIABLE: smokea_f **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value smokea_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered Or Inconsistent Data"
    .N = "(.N) Not Applicable"
    .R = "(.R) Age not in reasonable range."
  ;
  ** FORMAT: smoked_fv **;
  ** FOR VARIABLE: smoked_f **;
  value smoked_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: ssmokea_fv **;
  ** FOR VARIABLE: ssmokea_f **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value ssmokea_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered Or Inconsistent Data"
    .N = "(.N) Not Applicable"
    .R = "(.R) Age not in reasonable range."
  ;
  ** FORMAT: brothersv **;
  ** FOR VARIABLE: brothers **;
  value brothersv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) None"
    1 = "(1) One"
    2 = "(2) Two"
    3 = "(3) Three"
    4 = "(4) Four"
    5 = "(5) Five"
    6 = "(6) Six"
    7 = "(7) Seven Or More"
  ;
  ** FORMAT: fh_cancerv **;
  ** FOR VARIABLE: fh_cancer **;
  value fh_cancerv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sistersv **;
  ** FOR VARIABLE: sisters **;
  value sistersv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) None"
    1 = "(1) One"
    2 = "(2) Two"
    3 = "(3) Three"
    4 = "(4) Four"
    5 = "(5) Five"
    6 = "(6) Six"
    7 = "(7) Seven Or More"
  ;
  ** FORMAT: breast_fhv **;
  ** FOR VARIABLE: breast_fh **;
  value breast_fhv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    0 = "(0) No"
    1 = "(1) Yes, Immediate Female Family Member"
    2 = "(2) Male Relative Only"
    9 = "(9) Possibly - Relative Or Cancer Type Not Clear"
  ;
  ** FORMAT: breast_fh_agev **;
  ** FOR VARIABLE: breast_fh_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_fh_agev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    .N = "(.N) Not Applicable"
  ;
  ** FORMAT: breast_fh_cntv **;
  ** FOR VARIABLE: breast_fh_cnt **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_fh_cntv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
  ;
  ** FORMAT: bmi_20v **;
  ** FOR VARIABLE: bmi_20 **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value bmi_20v
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .R = "(.R) Height Or Weight Not In Reasonable Range"
  ;
  ** FORMAT: bmi_20cv **;
  ** FOR VARIABLE: bmi_20c **;
  value bmi_20cv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .R = "(.R) Height Or Weight Not In Reasonable Range"
    1 = "(1) 0-18.5"
    2 = "(2) 18.5-25"
    3 = "(3) 25-30"
    4 = "(4) 30+"
  ;
  ** FORMAT: bmi_50v **;
  ** FOR VARIABLE: bmi_50 **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value bmi_50v
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .R = "(.R) Height Or Weight Not In Reasonable Range"
  ;
  ** FORMAT: bmi_50cv **;
  ** FOR VARIABLE: bmi_50c **;
  value bmi_50cv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .R = "(.R) Height Or Weight Not In Reasonable Range"
    1 = "(1) 0-18.5"
    2 = "(2) 18.5-25"
    3 = "(3) 25-30"
    4 = "(4) 30+"
  ;
  ** FORMAT: bmi_curcv **;
  ** FOR VARIABLE: bmi_curc **;
  value bmi_curcv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .R = "(.R) Height Or Weight Not In Reasonable Range"
    1 = "(1) 0-18.5"
    2 = "(2) 18.5-25"
    3 = "(3) 25-30"
    4 = "(4) 30+"
  ;
  ** FORMAT: bmi_currv **;
  ** FOR VARIABLE: bmi_curr **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value bmi_currv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .R = "(.R) Height Or Weight Not In Reasonable Range"
  ;
  ** FORMAT: height_fv **;
  ** FOR VARIABLE: height_f **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value height_fv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    .R = "(.R) Height Out Of Range"
  ;
  ** FORMAT: weight20_fv **;
  ** FOR VARIABLE: weight20_f **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value weight20_fv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    .R = "(.R) Weight Out Of Range"
  ;
  ** FORMAT: weight50_fv **;
  ** FOR VARIABLE: weight50_f **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value weight50_fv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    .R = "(.R) Weight Out Of Range"
  ;
  ** FORMAT: weight_fv **;
  ** FOR VARIABLE: weight_f **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value weight_fv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    .R = "(.R) Weight Out Of Range"
  ;
  ** FORMAT: aspv **;
  ** FOR VARIABLE: asp **;
  value aspv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: asppdv **;
  ** FOR VARIABLE: asppd **;
  value asppdv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) None"
    1 = "(1) 1/Day"
    2 = "(2) 2+/Day"
    3 = "(3) 1/Week"
    4 = "(4) 2/Week"
    5 = "(5) 3-4/Week"
    6 = "(6) <2/Month"
    7 = "(7) 2-3/Month"
  ;
  ** FORMAT: ibupv **;
  ** FOR VARIABLE: ibup **;
  value ibupv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: ibuppdv **;
  ** FOR VARIABLE: ibuppd **;
  value ibuppdv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) None"
    1 = "(1) 1/Day"
    2 = "(2) 2+/Day"
    3 = "(3) 1/Week"
    4 = "(4) 2/Week"
    5 = "(5) 3-4/Week"
    6 = "(6) <2/Month"
    7 = "(7) 2-3/Month"
  ;
  ** FORMAT: arthrit_fv **;
  ** FOR VARIABLE: arthrit_f **;
  value arthrit_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: bronchit_fv **;
  ** FOR VARIABLE: bronchit_f **;
  value bronchit_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: colon_comorbidityv **;
  ** FOR VARIABLE: colon_comorbidity **;
  value colon_comorbidityv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: diabetes_fv **;
  ** FOR VARIABLE: diabetes_f **;
  value diabetes_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: divertic_fv **;
  ** FOR VARIABLE: divertic_f **;
  value divertic_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: emphys_fv **;
  ** FOR VARIABLE: emphys_f **;
  value emphys_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: gallblad_fv **;
  ** FOR VARIABLE: gallblad_f **;
  value gallblad_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: hearta_fv **;
  ** FOR VARIABLE: hearta_f **;
  value hearta_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: hyperten_fv **;
  ** FOR VARIABLE: hyperten_f **;
  value hyperten_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: liver_comorbidityv **;
  ** FOR VARIABLE: liver_comorbidity **;
  value liver_comorbidityv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: osteopor_fv **;
  ** FOR VARIABLE: osteopor_f **;
  value osteopor_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: polyps_fv **;
  ** FOR VARIABLE: polyps_f **;
  value polyps_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: stroke_fv **;
  ** FOR VARIABLE: stroke_f **;
  value stroke_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: bbdv **;
  ** FOR VARIABLE: bbd **;
  value bbdv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: bcontr_fv **;
  ** FOR VARIABLE: bcontr_f **;
  value bcontr_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: bcontrav **;
  ** FOR VARIABLE: bcontra **;
  value bcontrav
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .N = "(.N) Not Applicable"
    1 = "(1) <30"
    2 = "(2) 30-39"
    3 = "(3) 40-49"
    4 = "(4) 50+"
  ;
  ** FORMAT: bcontrtv **;
  ** FOR VARIABLE: bcontrt **;
  value bcontrtv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) Not Applicable"
    1 = "(1) 10+ Years"
    2 = "(2) 6-9 Years"
    3 = "(3) 4-5 Years"
    4 = "(4) 2-3 Years"
    5 = "(5) 1 Year or Less"
  ;
  ** FORMAT: benign_ovcystv **;
  ** FOR VARIABLE: benign_ovcyst **;
  value benign_ovcystv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: endometriosisv **;
  ** FOR VARIABLE: endometriosis **;
  value endometriosisv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: fchildav **;
  ** FOR VARIABLE: fchilda **;
  value fchildav
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .N = "(.N) Not Applicable"
    1 = "(1) <16"
    2 = "(2) 16-19"
    3 = "(3) 20-24"
    4 = "(4) 25-29"
    5 = "(5) 30-34"
    6 = "(6) 35-39"
    7 = "(7) 40+"
  ;
  ** FORMAT: fmenstrv **;
  ** FOR VARIABLE: fmenstr **;
  value fmenstrv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    1 = "(1) <10"
    2 = "(2) 10-11"
    3 = "(3) 12-13"
    4 = "(4) 14-15"
    5 = "(5) 16+"
  ;
  ** FORMAT: horm_statv **;
  ** FOR VARIABLE: horm_stat **;
  value horm_statv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    0 = "(0) Never"
    1 = "(1) Current"
    2 = "(2) Former"
    3 = "(3) Unknown Whether Current Or Former"
    4 = "(4) Doesn't Know If She Ever Took HRT"
  ;
  ** FORMAT: hyster_fv **;
  ** FOR VARIABLE: hyster_f **;
  value hyster_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
    2 = "(2) Don't Know"
  ;
  ** FORMAT: hysterav **;
  ** FOR VARIABLE: hystera **;
  value hysterav
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .N = "(.N) Not Applicable"
    1 = "(1) <40"
    2 = "(2) 40-44"
    3 = "(3) 45-49"
    4 = "(4) 50-54"
    5 = "(5) 55+"
  ;
  ** FORMAT: livecv **;
  ** FOR VARIABLE: livec **;
  value livecv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) Zero"
    1 = "(1) One"
    2 = "(2) Two"
    3 = "(3) Three"
    4 = "(4) Four"
    5 = "(5) Five Or More"
  ;
  ** FORMAT: lmenstrv **;
  ** FOR VARIABLE: lmenstr **;
  value lmenstrv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    1 = "(1) <40"
    2 = "(2) 40-44"
    3 = "(3) 45-49"
    4 = "(4) 50-54"
    5 = "(5) 55+"
  ;
  ** FORMAT: menstrsv **;
  ** FOR VARIABLE: menstrs **;
  value menstrsv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    1 = "(1) Natural Menopause"
    2 = "(2) Surgery"
    3 = "(3) Radiation"
    4 = "(4) Drug Therapy"
  ;
  ** FORMAT: menstrs_stat_typev **;
  ** FOR VARIABLE: menstrs_stat_type **;
  value menstrs_stat_typev
    .F = "(.F) No Form"
    1 = "(1) Natural postmenopausal"
    2 = "(2) Bilateral oophorectomy"
    3 = "(3) Hysterectomy, no bilateral oophorectomy"
    4 = "(4) Surgical, details unclear"
    5 = "(5) Drug therapy"
    6 = "(6) Radiation"
    7 = "(7) Postmenopausal, reason unknown"
    8 = "(8) Menopausal status unknown"
  ;
  ** FORMAT: miscarv **;
  ** FOR VARIABLE: miscar **;
  value miscarv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) 0"
    1 = "(1) 1"
    2 = "(2) 2+"
  ;
  ** FORMAT: ovariesr_fv **;
  ** FOR VARIABLE: ovariesr_f **;
  value ovariesr_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) Ovaries Not Removed"
    1 = "(1) One Ovary - Partial"
    2 = "(2) One Ovary - Total"
    3 = "(3) Both Ovaries - Partial"
    4 = "(4) Both Ovaries - Total"
    5 = "(5) Don't Know"
    8 = "(8) Ambiguous"
  ;
  ** FORMAT: post_menopausalv **;
  ** FOR VARIABLE: post_menopausal **;
  value post_menopausalv
    .F = "(.F) No form"
    1 = "(1) Definitely post-menopausal"
    2 = "(2) Possibly post-menopausal"
  ;
  ** FORMAT: preg_fv **;
  ** FOR VARIABLE: preg_f **;
  value preg_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
    2 = "(2) Don't Know"
  ;
  ** FORMAT: pregav **;
  ** FOR VARIABLE: prega **;
  value pregav
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    .N = "(.N) Not Applicable"
    1 = "(1) <15"
    2 = "(2) 15-19"
    3 = "(3) 20-24"
    4 = "(4) 25-29"
    5 = "(5) 30-34"
    6 = "(6) 35-39"
    7 = "(7) 40+"
  ;
  ** FORMAT: pregcv **;
  ** FOR VARIABLE: pregc **;
  value pregcv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) None"
    1 = "(1) 1"
    2 = "(2) 2"
    3 = "(3) 3-4"
    4 = "(4) 5-9"
    5 = "(5) 10+"
  ;
  ** FORMAT: stillbv **;
  ** FOR VARIABLE: stillb **;
  value stillbv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) 0"
    1 = "(1) 1"
    2 = "(2) 2+"
  ;
  ** FORMAT: thormv **;
  ** FOR VARIABLE: thorm **;
  value thormv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) Not Applicable"
    1 = "(1) 10+ Years"
    2 = "(2) 6-9 Years"
    3 = "(3) 4-5 Years"
    4 = "(4) 2-3 Years"
    5 = "(5) <= 1 Year"
  ;
  ** FORMAT: trypregv **;
  ** FOR VARIABLE: trypreg **;
  value trypregv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: tubalv **;
  ** FOR VARIABLE: tubal **;
  value tubalv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) 0"
    1 = "(1) 1"
    2 = "(2) 2+"
  ;
  ** FORMAT: tuballigv **;
  ** FOR VARIABLE: tuballig **;
  value tuballigv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
    2 = "(2) Don't Know"
  ;
  ** FORMAT: uterine_fibv **;
  ** FOR VARIABLE: uterine_fib **;
  value uterine_fibv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: curhormv **;
  ** FOR VARIABLE: curhorm **;
  value curhormv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: horm_fv **;
  ** FOR VARIABLE: horm_f **;
  value horm_fv
    .F = "(.F) No Form"
    .M = "(.M) Not Answered"
    0 = "(0) No"
    1 = "(1) Yes"
    2 = "(2) Don't Know"
  ;
run;
