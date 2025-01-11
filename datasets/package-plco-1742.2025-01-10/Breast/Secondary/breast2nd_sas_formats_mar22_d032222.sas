** Runtime:1966090617.5 Data:/prj/plcoims/maindata/mastdata/monthly/mar22/03.22.22/purple/cancers/breast/breast_prsn2nd.gz **;
proc format;
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
  ** FORMAT: build_incidence_cutofff **;
  ** FOR VARIABLE: build_incidence_cutoff **;
  value build_incidence_cutofff
    1 = "Cancer Incidence Data Through 2009"
  ;
  ** FORMAT: $plco_idf **;
  ** FOR VARIABLE: plco_id **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $plco_idf
  ;
  ** FORMAT: breast_cancer2ndf **;
  ** FOR VARIABLE: breast_cancer2nd **;
  value breast_cancer2ndf
    -1 = "Confirmed Cancer Before Randomization"
    0 = "No Confirmed Cancer"
    1 = "Confirmed Cancer"
  ;
  ** FORMAT: breast_cancer_diagdays2ndf **;
  ** FOR VARIABLE: breast_cancer_diagdays2nd **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_cancer_diagdays2ndf
    .N = "Not Applicable"
  ;
  ** FORMAT: breast_dxproc2ndf **;
  ** FOR VARIABLE: breast_dxproc2nd **;
  value breast_dxproc2ndf
    .F = "No BCS Form"
    1 = "FNA"
    2 = "Excisional Biopsy"
    3 = "Incisional Biopsy"
    4 = "Core Biopsy"
    11 = "Other Breast Biopsy, Yielding Tissue"
    15 = "Lymph Node Biopsy Yielding Tissue"
    17 = "Other Biopsy, Yielding Tissue (Specify)"
  ;
  ** FORMAT: breast_resect_proc2ndf **;
  ** FOR VARIABLE: breast_resect_proc2nd **;
  value breast_resect_proc2ndf
    .F = "No BCS Form"
    1 = "Lumpectomy"
    2 = "Mastectomy"
    3 = "Biopsy Only"
    4 = "Other, Specify"
  ;
  ** FORMAT: breast_behavior_raws2ndf **;
  ** FOR VARIABLE: breast_behavior_raws2nd **;
  value breast_behavior_raws2ndf
    .F = "No Form"
    2 = "In Situ"
    3 = "Malignant, Primary Site"
    4 = "Malignant, Invasive With In Situ Components"
  ;
  ** FORMAT: breast_er_status2ndf **;
  ** FOR VARIABLE: breast_er_status2nd **;
  value breast_er_status2ndf
    .F = "No BCS Form"
    1 = "Negative"
    2 = "Equivocal - Positive Cells Within Range of 1-9%"
    3 = "Positive"
    6 = "Ordered, No Results"
    7 = "Not Ordered"
  ;
  ** FORMAT: breast_estrogen_quant2ndf **;
  ** FOR VARIABLE: breast_estrogen_quant2nd **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_estrogen_quant2ndf
    .F = "No BCS Form"
    .M = "Missing"
  ;
  ** FORMAT: breast_her2_stat2ndf **;
  ** FOR VARIABLE: breast_her2_stat2nd **;
  value breast_her2_stat2ndf
    .F = "No BCS Form"
    0 = "0"
    1 = "1+"
    2 = "2+"
    3 = "3+"
    8 = "Not Ordered"
    9 = "Ordered, No Results"
  ;
  ** FORMAT: breast_her2fish_ratio2ndf **;
  ** FOR VARIABLE: breast_her2fish_ratio2nd **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_her2fish_ratio2ndf
    .F = "No BCS Form"
    .M = "Missing"
  ;
  ** FORMAT: breast_her2summ2ndf **;
  ** FOR VARIABLE: breast_her2summ2nd **;
  value breast_her2summ2ndf
    .F = "No BCS Form"
    1 = "Positive"
    2 = "Equivocal"
    3 = "Negative"
    4 = "Indeterminant"
    5 = "Ordered, No Results"
  ;
  ** FORMAT: breast_hist_type_raws2ndf **;
  ** FOR VARIABLE: breast_hist_type_raws2nd **;
  value breast_hist_type_raws2ndf
    .F = "No BCS Form"
    1 = "Lobular"
    2 = "Tubular"
    3 = "Ductal, NOS"
    4 = "Other"
  ;
  ** FORMAT: breast_morphology_raw2ndf **;
  ** FOR VARIABLE: breast_morphology_raw2nd **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_morphology_raw2ndf
    .F = "No form"
  ;
  ** FORMAT: breast_pr_status2ndf **;
  ** FOR VARIABLE: breast_pr_status2nd **;
  value breast_pr_status2ndf
    .F = "No BCS Form"
    1 = "Negative"
    2 = "Equivocal - Positive Cells Within Range of 1-9%"
    3 = "Positive"
    4 = "Indeterminant"
    6 = "Ordered, No Results"
    7 = "Not Ordered"
  ;
  ** FORMAT: breast_progest_quant2ndf **;
  ** FOR VARIABLE: breast_progest_quant2nd **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_progest_quant2ndf
    .F = "No BCS Form"
    .M = "Missing"
    999 = "Not Available"
  ;
  ** FORMAT: breast_stage2ndf **;
  ** FOR VARIABLE: breast_stage2nd **;
  value breast_stage2ndf
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
  ** FORMAT: breast_stage_7e2ndf **;
  ** FOR VARIABLE: breast_stage_7e2nd **;
  value breast_stage_7e2ndf
    .F = "No Form"
    .M = "Missing Data"
    0 = "Stage 0"
    100 = "Stage I"
    110 = "Stage IA"
    210 = "Stage IIA"
    220 = "Stage IIB"
    310 = "Stage IIIA"
    320 = "Stage IIIB"
    400 = "Stage IV"
  ;
  ** FORMAT: breast_stage_m2ndf **;
  ** FOR VARIABLE: breast_stage_m2nd **;
  value breast_stage_m2ndf
    .F = "No Form"
    .M = "Missing Data"
    0 = "M0"
    999 = "MX"
  ;
  ** FORMAT: breast_stage_n2ndf **;
  ** FOR VARIABLE: breast_stage_n2nd **;
  value breast_stage_n2ndf
    .F = "No Form"
    .M = "Missing Data"
    0 = "N0"
    110 = "N1a"
    120 = "N1b"
    200 = "N2"
    999 = "NX"
  ;
  ** FORMAT: breast_stage_t2ndf **;
  ** FOR VARIABLE: breast_stage_t2nd **;
  value breast_stage_t2ndf
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
  ;
  ** FORMAT: $breast_topography_raw2ndf **;
  ** FOR VARIABLE: breast_topography_raw2nd **;
  value $breast_topography_raw2ndf
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
  ** FORMAT: build_incidence_cutoffv **;
  ** FOR VARIABLE: build_incidence_cutoff **;
  value build_incidence_cutoffv
    1 = "(1) Cancer Incidence Data Through 2009"
  ;
  ** FORMAT: $plco_idv **;
  ** FOR VARIABLE: plco_id **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $plco_idv
  ;
  ** FORMAT: breast_cancer2ndv **;
  ** FOR VARIABLE: breast_cancer2nd **;
  value breast_cancer2ndv
    -1 = "(-1) Confirmed Cancer Before Randomization"
    0 = "(0) No Confirmed Cancer"
    1 = "(1) Confirmed Cancer"
  ;
  ** FORMAT: breast_cancer_diagdays2ndv **;
  ** FOR VARIABLE: breast_cancer_diagdays2nd **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_cancer_diagdays2ndv
    .N = "(.N) Not Applicable"
  ;
  ** FORMAT: breast_dxproc2ndv **;
  ** FOR VARIABLE: breast_dxproc2nd **;
  value breast_dxproc2ndv
    .F = "(.F) No BCS Form"
    1 = "(1) FNA"
    2 = "(2) Excisional Biopsy"
    3 = "(3) Incisional Biopsy"
    4 = "(4) Core Biopsy"
    11 = "(11) Other Breast Biopsy, Yielding Tissue"
    15 = "(15) Lymph Node Biopsy Yielding Tissue"
    17 = "(17) Other Biopsy, Yielding Tissue (Specify)"
  ;
  ** FORMAT: breast_resect_proc2ndv **;
  ** FOR VARIABLE: breast_resect_proc2nd **;
  value breast_resect_proc2ndv
    .F = "(.F) No BCS Form"
    1 = "(1) Lumpectomy"
    2 = "(2) Mastectomy"
    3 = "(3) Biopsy Only"
    4 = "(4) Other, Specify"
  ;
  ** FORMAT: breast_behavior_raws2ndv **;
  ** FOR VARIABLE: breast_behavior_raws2nd **;
  value breast_behavior_raws2ndv
    .F = "(.F) No Form"
    2 = "(2) In Situ"
    3 = "(3) Malignant, Primary Site"
    4 = "(4) Malignant, Invasive With In Situ Components"
  ;
  ** FORMAT: breast_er_status2ndv **;
  ** FOR VARIABLE: breast_er_status2nd **;
  value breast_er_status2ndv
    .F = "(.F) No BCS Form"
    1 = "(1) Negative"
    2 = "(2) Equivocal - Positive Cells Within Range of 1-9%"
    3 = "(3) Positive"
    6 = "(6) Ordered, No Results"
    7 = "(7) Not Ordered"
  ;
  ** FORMAT: breast_estrogen_quant2ndv **;
  ** FOR VARIABLE: breast_estrogen_quant2nd **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_estrogen_quant2ndv
    .F = "(.F) No BCS Form"
    .M = "(.M) Missing"
  ;
  ** FORMAT: breast_her2_stat2ndv **;
  ** FOR VARIABLE: breast_her2_stat2nd **;
  value breast_her2_stat2ndv
    .F = "(.F) No BCS Form"
    0 = "(0) 0"
    1 = "(1) 1+"
    2 = "(2) 2+"
    3 = "(3) 3+"
    8 = "(8) Not Ordered"
    9 = "(9) Ordered, No Results"
  ;
  ** FORMAT: breast_her2fish_ratio2ndv **;
  ** FOR VARIABLE: breast_her2fish_ratio2nd **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_her2fish_ratio2ndv
    .F = "(.F) No BCS Form"
    .M = "(.M) Missing"
  ;
  ** FORMAT: breast_her2summ2ndv **;
  ** FOR VARIABLE: breast_her2summ2nd **;
  value breast_her2summ2ndv
    .F = "(.F) No BCS Form"
    1 = "(1) Positive"
    2 = "(2) Equivocal"
    3 = "(3) Negative"
    4 = "(4) Indeterminant"
    5 = "(5) Ordered, No Results"
  ;
  ** FORMAT: breast_hist_type_raws2ndv **;
  ** FOR VARIABLE: breast_hist_type_raws2nd **;
  value breast_hist_type_raws2ndv
    .F = "(.F) No BCS Form"
    1 = "(1) Lobular"
    2 = "(2) Tubular"
    3 = "(3) Ductal, NOS"
    4 = "(4) Other"
  ;
  ** FORMAT: breast_morphology_raw2ndv **;
  ** FOR VARIABLE: breast_morphology_raw2nd **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_morphology_raw2ndv
    .F = "(.F) No form"
  ;
  ** FORMAT: breast_pr_status2ndv **;
  ** FOR VARIABLE: breast_pr_status2nd **;
  value breast_pr_status2ndv
    .F = "(.F) No BCS Form"
    1 = "(1) Negative"
    2 = "(2) Equivocal - Positive Cells Within Range of 1-9%"
    3 = "(3) Positive"
    4 = "(4) Indeterminant"
    6 = "(6) Ordered, No Results"
    7 = "(7) Not Ordered"
  ;
  ** FORMAT: breast_progest_quant2ndv **;
  ** FOR VARIABLE: breast_progest_quant2nd **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value breast_progest_quant2ndv
    .F = "(.F) No BCS Form"
    .M = "(.M) Missing"
    999 = "(999) Not Available"
  ;
  ** FORMAT: breast_stage2ndv **;
  ** FOR VARIABLE: breast_stage2nd **;
  value breast_stage2ndv
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
  ** FORMAT: breast_stage_7e2ndv **;
  ** FOR VARIABLE: breast_stage_7e2nd **;
  value breast_stage_7e2ndv
    .F = "(.F) No Form"
    .M = "(.M) Missing Data"
    0 = "(0) Stage 0"
    100 = "(100) Stage I"
    110 = "(110) Stage IA"
    210 = "(210) Stage IIA"
    220 = "(220) Stage IIB"
    310 = "(310) Stage IIIA"
    320 = "(320) Stage IIIB"
    400 = "(400) Stage IV"
  ;
  ** FORMAT: breast_stage_m2ndv **;
  ** FOR VARIABLE: breast_stage_m2nd **;
  value breast_stage_m2ndv
    .F = "(.F) No Form"
    .M = "(.M) Missing Data"
    0 = "(0) M0"
    999 = "(999) MX"
  ;
  ** FORMAT: breast_stage_n2ndv **;
  ** FOR VARIABLE: breast_stage_n2nd **;
  value breast_stage_n2ndv
    .F = "(.F) No Form"
    .M = "(.M) Missing Data"
    0 = "(0) N0"
    110 = "(110) N1a"
    120 = "(120) N1b"
    200 = "(200) N2"
    999 = "(999) NX"
  ;
  ** FORMAT: breast_stage_t2ndv **;
  ** FOR VARIABLE: breast_stage_t2nd **;
  value breast_stage_t2ndv
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
  ;
  ** FORMAT: $breast_topography_raw2ndv **;
  ** FOR VARIABLE: breast_topography_raw2nd **;
  value $breast_topography_raw2ndv
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
run;
