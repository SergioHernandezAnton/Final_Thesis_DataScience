** Runtime:2018175523.3 Data:/prj/plcoims/database/questionnaires/sqx/data/masterfiles/q20231214/cdas/sqx.gz **;
proc format;
  ** FORMAT: $plco_idf **;
  ** FOR VARIABLE: plco_id **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $plco_idf
  ;
  ** FORMAT: $sqx_buildf **;
  ** FOR VARIABLE: sqx_build **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $sqx_buildf
  ;
  ** FORMAT: sqx_agef **;
  ** FOR VARIABLE: sqx_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_agef
    .F = "No Form"
  ;
  ** FORMAT: sqx_daysf **;
  ** FOR VARIABLE: sqx_days **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_daysf
    .F = "No Form"
  ;
  ** FORMAT: sqx_statusf **;
  ** FOR VARIABLE: sqx_status **;
  value sqx_statusf
    1 = "Compliant, Valid"
    3 = "Non-eligible"
    4 = "Non-compliant"
    5 = "Compliant, Invalid"
  ;
  ** FORMAT: sqx_substatusf **;
  ** FOR VARIABLE: sqx_substatus **;
  value sqx_substatusf
    1 = "Compliant, Valid"
    3 = "Non-eligible: Dead Before SQX"
    4 = "Non-eligible: Participant Withdrew Before SQX"
    5 = "Non-eligible: Not Selected, NOS"
    6 = "Non-compliant: SQX Not Mailed"
    7 = "Non-compliant: SQX Not Delivered"
    8 = "Non-compliant: SQX Not Returned"
    9 = "Compliant, Invalid: SQX Not Scanned"
    11 = "Compliant, Invalid: Wrong Gender"
    12 = "Compliant, Invalid: No Answers"
    13 = "Compliant, Invalid: Multiple Answers"
  ;
  ** FORMAT: sqx_validf **;
  ** FOR VARIABLE: sqx_valid **;
  value sqx_validf
    0 = "No Valid SQX"
    1 = "Completed Valid SQX"
  ;
  ** FORMAT: sqx_incomef **;
  ** FOR VARIABLE: sqx_income **;
  value sqx_incomef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "< $20,000"
    2 = "$20,000-$49,000"
    3 = "$50,000-$99,000"
    4 = "$100,000-$200,000"
    5 = ">$200,000"
    6 = "Prefer not to Answer"
  ;
  ** FORMAT: sqx_religionf **;
  ** FOR VARIABLE: sqx_religion **;
  value sqx_religionf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "Catholic"
    2 = "Christian Scientist"
    3 = "Greek Orthodox"
    4 = "Jewish"
    5 = "LDS or Mormon"
    6 = "Protestant"
    7 = "Seventh Day Adventist"
    8 = "Other (Specify)"
    9 = "None"
  ;
  ** FORMAT: sqx_workstatf **;
  ** FOR VARIABLE: sqx_workstat **;
  value sqx_workstatf
    .F = "No Form"
    .M = "Blank"
    1 = "Homemaker"
    2 = "Employed Full-time"
    3 = "Employed Part-time"
    4 = "Extended Sick Leave"
    5 = "Other (Specify)"
    6 = "Unemployed"
    7 = "Retired"
    8 = "Disabled"
    10 = "Retired + Other"
  ;
  ** FORMAT: sqxbq_hispanicf **;
  ** FOR VARIABLE: sqxbq_hispanic **;
  value sqxbq_hispanicf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "Non-Hispanic"
    1 = "Hispanic"
  ;
  ** FORMAT: sqxbq_maritalf **;
  ** FOR VARIABLE: sqxbq_marital **;
  value sqxbq_maritalf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "Married or Living as Married"
    2 = "Widowed"
    3 = "Divorced"
    4 = "Separated"
    5 = "Never Married"
  ;
  ** FORMAT: sqxbq_race7f **;
  ** FOR VARIABLE: sqxbq_race7 **;
  value sqxbq_race7f
    .A = "Ambiguous"
    .F = "No Form"
    1 = "White"
    2 = "Black or African-American"
    3 = "Hispanic"
    4 = "Asian"
    5 = "Native Hawaiian or Other Pacific Islander"
    6 = "American Indian or Alaskan Native"
    7 = "Missing"
  ;
  ** FORMAT: sqxo_hispanicf **;
  ** FOR VARIABLE: sqxo_hispanic **;
  value sqxo_hispanicf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "Non-Hispanic"
    1 = "Hispanic"
  ;
  ** FORMAT: sqxo_maritalf **;
  ** FOR VARIABLE: sqxo_marital **;
  value sqxo_maritalf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "Married or Living as Married"
    2 = "Widowed"
    3 = "Divorced"
    4 = "Separated"
    5 = "Never Married"
  ;
  ** FORMAT: sqxo_race7f **;
  ** FOR VARIABLE: sqxo_race7 **;
  value sqxo_race7f
    .A = "Ambiguous"
    .F = "No Form"
    1 = "White"
    2 = "Black or African-American"
    3 = "Hispanic"
    4 = "Asian"
    5 = "Native Hawaiian or Other Pacific Islander"
    6 = "American Indian or Alaskan Native"
    7 = "Missing"
  ;
  ** FORMAT: sqx_bmi30sf **;
  ** FOR VARIABLE: sqx_bmi30s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_bmi30sf
    .F = "No Form"
    .M = "Blank"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_bmi30scf **;
  ** FOR VARIABLE: sqx_bmi30sc **;
  value sqx_bmi30scf
    .F = "No Form"
    .M = "Blank"
    .R = "Height or Weight not in Reasonable Range"
    1 = "0-18.5"
    2 = "> 18.5-25"
    3 = "> 25-30"
    4 = "> 30"
  ;
  ** FORMAT: sqx_bmi40sf **;
  ** FOR VARIABLE: sqx_bmi40s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_bmi40sf
    .F = "No Form"
    .M = "Blank"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_bmi40scf **;
  ** FOR VARIABLE: sqx_bmi40sc **;
  value sqx_bmi40scf
    .F = "No Form"
    .M = "Blank"
    .R = "Height or Weight not in Reasonable Range"
    1 = "0-18.5"
    2 = "> 18.5-25"
    3 = "> 25-30"
    4 = "> 30"
  ;
  ** FORMAT: sqx_bmi50sf **;
  ** FOR VARIABLE: sqx_bmi50s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_bmi50sf
    .F = "No Form"
    .M = "Blank"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_bmi50scf **;
  ** FOR VARIABLE: sqx_bmi50sc **;
  value sqx_bmi50scf
    .F = "No Form"
    .M = "Blank"
    .R = "Height or Weight not in Reasonable Range"
    1 = "0-18.5"
    2 = "> 18.5-25"
    3 = "> 25-30"
    4 = "> 30"
  ;
  ** FORMAT: sqx_bmi60sf **;
  ** FOR VARIABLE: sqx_bmi60s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_bmi60sf
    .F = "No Form"
    .M = "Blank"
    .N = "N/A - Has not Reached this Age"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_bmi60scf **;
  ** FOR VARIABLE: sqx_bmi60sc **;
  value sqx_bmi60scf
    .F = "No Form"
    .M = "Blank"
    .N = "N/A - Has not Reached this Age"
    .R = "Height or Weight not in Reasonable Range"
    1 = "0-18.5"
    2 = "> 18.5-25"
    3 = "> 25-30"
    4 = "> 30"
  ;
  ** FORMAT: sqx_bmi70sf **;
  ** FOR VARIABLE: sqx_bmi70s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_bmi70sf
    .F = "No Form"
    .M = "Blank"
    .N = "N/A - Has not Reached this Age"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_bmi70scf **;
  ** FOR VARIABLE: sqx_bmi70sc **;
  value sqx_bmi70scf
    .F = "No Form"
    .M = "Blank"
    .N = "N/A - Has not Reached this Age"
    .R = "Height or Weight not in Reasonable Range"
    1 = "0-18.5"
    2 = "> 18.5-25"
    3 = "> 25-30"
    4 = "> 30"
  ;
  ** FORMAT: sqx_bmi_curcf **;
  ** FOR VARIABLE: sqx_bmi_curc **;
  value sqx_bmi_curcf
    .F = "No Form"
    .M = "Blank"
    .R = "Height or Weight not in Reasonable Range"
    1 = "0-18.5"
    2 = "> 18.5-25"
    3 = "> 25-30"
    4 = "> 30"
  ;
  ** FORMAT: sqx_bmi_currf **;
  ** FOR VARIABLE: sqx_bmi_curr **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_bmi_currf
    .F = "No Form"
    .M = "Blank"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_gain_areaf **;
  ** FOR VARIABLE: sqx_gain_area **;
  value sqx_gain_areaf
    .F = "No Form"
    .M = "Blank"
    1 = "Don't Gain Weight"
    2 = "Around Chest and Shoulders"
    3 = "Around Waist and Stomach"
    4 = "Around Hips and Thighs"
    5 = "Equally All Over"
    6 = "Other (Specify)"
    8 = "Multiple Areas"
  ;
  ** FORMAT: sqx_heightf **;
  ** FOR VARIABLE: sqx_height **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_heightf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_lose_areaf **;
  ** FOR VARIABLE: sqx_lose_area **;
  value sqx_lose_areaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "Don't Try to Lose Weight"
    2 = "Can't Lose Weight"
    3 = "Around Chest and Shoulders"
    4 = "Around Waist and Stomach"
    5 = "Around Hips and Thighs"
    6 = "Equally All Over"
    7 = "Other (Specify)"
  ;
  ** FORMAT: sqx_sit_htf **;
  ** FOR VARIABLE: sqx_sit_ht **;
  value sqx_sit_htf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "Especially Tall"
    2 = "Somewhat Tall"
    3 = "Typical"
    4 = "Somewhat Short"
    5 = "Especially Short"
  ;
  ** FORMAT: sqx_waist_hipf **;
  ** FOR VARIABLE: sqx_waist_hip **;
  value sqx_waist_hipf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "Waist much Smaller than Hips"
    2 = "Waist Somewhat Smaller than Hips"
    3 = "Waist Similar to Hips"
    4 = "Waist Somewhat Larger than Hips"
    5 = "Waist much Larger than Hips"
  ;
  ** FORMAT: sqx_wt30sf **;
  ** FOR VARIABLE: sqx_wt30s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_wt30sf
    .F = "No Form"
    .M = "Blank"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_wt40sf **;
  ** FOR VARIABLE: sqx_wt40s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_wt40sf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_wt50sf **;
  ** FOR VARIABLE: sqx_wt50s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_wt50sf
    .F = "No Form"
    .M = "Blank"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_wt60sf **;
  ** FOR VARIABLE: sqx_wt60s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_wt60sf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A - Has not Reached this Age"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_wt70sf **;
  ** FOR VARIABLE: sqx_wt70s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_wt70sf
    .F = "No Form"
    .M = "Blank"
    .N = "N/A - Has not Reached this Age"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_wt_currf **;
  ** FOR VARIABLE: sqx_wt_curr **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_wt_currf
    .F = "No Form"
    .M = "Blank"
    .R = "Out of Range"
  ;
  ** FORMAT: sqx_brothersf **;
  ** FOR VARIABLE: sqx_brothers **;
  value sqx_brothersf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "0"
    1 = "1"
    2 = "2"
    3 = "3"
    4 = "4"
    5 = "5+"
  ;
  ** FORMAT: sqx_dad_agef **;
  ** FOR VARIABLE: sqx_dad_age **;
  value sqx_dad_agef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "< 20"
    2 = "20-29"
    3 = "30-39"
    4 = "40-49"
    5 = "50-59"
    6 = "60-69"
    7 = "70+"
    8 = "Unknown"
  ;
  ** FORMAT: sqx_daughtersf **;
  ** FOR VARIABLE: sqx_daughters **;
  value sqx_daughtersf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "0"
    1 = "1"
    2 = "2"
    3 = "3"
    4 = "4"
    5 = "5+"
  ;
  ** FORMAT: sqx_fh_bladf **;
  ** FOR VARIABLE: sqx_fh_blad **;
  value sqx_fh_bladf
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_fh_breastf **;
  ** FOR VARIABLE: sqx_fh_breast **;
  value sqx_fh_breastf
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_fh_cancer_ff **;
  ** FOR VARIABLE: sqx_fh_cancer_f **;
  value sqx_fh_cancer_ff
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_fh_colof **;
  ** FOR VARIABLE: sqx_fh_colo **;
  value sqx_fh_colof
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_fh_dnknf **;
  ** FOR VARIABLE: sqx_fh_dnkn **;
  value sqx_fh_dnknf
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_fh_endof **;
  ** FOR VARIABLE: sqx_fh_endo **;
  value sqx_fh_endof
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_fh_leukf **;
  ** FOR VARIABLE: sqx_fh_leuk **;
  value sqx_fh_leukf
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_fh_lungf **;
  ** FOR VARIABLE: sqx_fh_lung **;
  value sqx_fh_lungf
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_fh_lymphf **;
  ** FOR VARIABLE: sqx_fh_lymph **;
  value sqx_fh_lymphf
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_fh_othrf **;
  ** FOR VARIABLE: sqx_fh_othr **;
  value sqx_fh_othrf
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_fh_ovarf **;
  ** FOR VARIABLE: sqx_fh_ovar **;
  value sqx_fh_ovarf
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_fh_prosf **;
  ** FOR VARIABLE: sqx_fh_pros **;
  value sqx_fh_prosf
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_mom_agef **;
  ** FOR VARIABLE: sqx_mom_age **;
  value sqx_mom_agef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "< 20"
    2 = "20-24"
    3 = "25-29"
    4 = "30-34"
    5 = "35-39"
    6 = "40-44"
    7 = "45+"
    8 = "Unknown"
  ;
  ** FORMAT: sqx_sistersf **;
  ** FOR VARIABLE: sqx_sisters **;
  value sqx_sistersf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "0"
    1 = "1"
    2 = "2"
    3 = "3"
    4 = "4"
    5 = "5+"
  ;
  ** FORMAT: sqx_sonsf **;
  ** FOR VARIABLE: sqx_sons **;
  value sqx_sonsf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "0"
    1 = "1"
    2 = "2"
    3 = "3"
    4 = "4"
    5 = "5+"
  ;
  ** FORMAT: sqx_arthritisaf **;
  ** FOR VARIABLE: sqx_arthritisa **;
  value sqx_arthritisaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "< 30"
    2 = "30-39"
    3 = "40-49"
    4 = "50-59"
    5 = "60-69"
    6 = "70 +"
  ;
  ** FORMAT: sqx_asthmaf **;
  ** FOR VARIABLE: sqx_asthma **;
  value sqx_asthmaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_asthmaaf **;
  ** FOR VARIABLE: sqx_asthmaa **;
  value sqx_asthmaaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "< 50"
    2 = "50-59"
    3 = "60-69"
    4 = "70 +"
  ;
  ** FORMAT: sqx_broke_armf **;
  ** FOR VARIABLE: sqx_broke_arm **;
  value sqx_broke_armf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_broke_hipf **;
  ** FOR VARIABLE: sqx_broke_hip **;
  value sqx_broke_hipf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_broke_nonef **;
  ** FOR VARIABLE: sqx_broke_none **;
  value sqx_broke_nonef
    .F = "No Form"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_broke_oth_bonef **;
  ** FOR VARIABLE: sqx_broke_oth_bone **;
  value sqx_broke_oth_bonef
    .F = "No Form"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_broke_vertebraf **;
  ** FOR VARIABLE: sqx_broke_vertebra **;
  value sqx_broke_vertebraf
    .F = "No Form"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_cholesterolf **;
  ** FOR VARIABLE: sqx_cholesterol **;
  value sqx_cholesterolf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_cholesterolaf **;
  ** FOR VARIABLE: sqx_cholesterola **;
  value sqx_cholesterolaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "< 50"
    2 = "50-59"
    3 = "60-69"
    4 = "70 +"
  ;
  ** FORMAT: sqx_diabetesaf **;
  ** FOR VARIABLE: sqx_diabetesa **;
  value sqx_diabetesaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "< 50"
    2 = "50-59"
    3 = "60-69"
    4 = "70 +"
  ;
  ** FORMAT: sqx_emphysemaaf **;
  ** FOR VARIABLE: sqx_emphysemaa **;
  value sqx_emphysemaaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "< 50"
    2 = "50-59"
    3 = "60-69"
    4 = "70 +"
  ;
  ** FORMAT: sqx_heartaaf **;
  ** FOR VARIABLE: sqx_heartaa **;
  value sqx_heartaaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "< 50"
    2 = "50-59"
    3 = "60-69"
    4 = "70 +"
  ;
  ** FORMAT: sqx_hypertenaf **;
  ** FOR VARIABLE: sqx_hypertena **;
  value sqx_hypertenaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "< 50"
    2 = "50-59"
    3 = "60-69"
    4 = "70 +"
  ;
  ** FORMAT: sqx_osteoporaf **;
  ** FOR VARIABLE: sqx_osteopora **;
  value sqx_osteoporaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "< 50"
    2 = "50-59"
    3 = "60-69"
    4 = "70 +"
  ;
  ** FORMAT: sqx_strokeaf **;
  ** FOR VARIABLE: sqx_strokea **;
  value sqx_strokeaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "< 50"
    2 = "50-59"
    3 = "60-69"
    4 = "70 +"
  ;
  ** FORMAT: sqxbq_arthritisf **;
  ** FOR VARIABLE: sqxbq_arthritis **;
  value sqxbq_arthritisf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_arthritistf **;
  ** FOR VARIABLE: sqxbq_arthritist **;
  value sqxbq_arthritistf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "Rheumatoid Arthritis"
    2 = "Osteoarthritis"
    3 = "Not Sure Which Type"
  ;
  ** FORMAT: sqxbq_diabetesf **;
  ** FOR VARIABLE: sqxbq_diabetes **;
  value sqxbq_diabetesf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_emphysemaf **;
  ** FOR VARIABLE: sqxbq_emphysema **;
  value sqxbq_emphysemaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_heartaf **;
  ** FOR VARIABLE: sqxbq_hearta **;
  value sqxbq_heartaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_hypertenf **;
  ** FOR VARIABLE: sqxbq_hyperten **;
  value sqxbq_hypertenf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_osteoporf **;
  ** FOR VARIABLE: sqxbq_osteopor **;
  value sqxbq_osteoporf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_strokef **;
  ** FOR VARIABLE: sqxbq_stroke **;
  value sqxbq_strokef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxo_arthritisf **;
  ** FOR VARIABLE: sqxo_arthritis **;
  value sqxo_arthritisf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxo_arthritistf **;
  ** FOR VARIABLE: sqxo_arthritist **;
  value sqxo_arthritistf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "Rheumatoid Arthritis"
    2 = "Osteoarthritis"
    3 = "Not Sure Which Type"
  ;
  ** FORMAT: sqxo_diabetesf **;
  ** FOR VARIABLE: sqxo_diabetes **;
  value sqxo_diabetesf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxo_emphysemaf **;
  ** FOR VARIABLE: sqxo_emphysema **;
  value sqxo_emphysemaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxo_heartaf **;
  ** FOR VARIABLE: sqxo_hearta **;
  value sqxo_heartaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxo_hypertenf **;
  ** FOR VARIABLE: sqxo_hyperten **;
  value sqxo_hypertenf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxo_osteoporf **;
  ** FOR VARIABLE: sqxo_osteopor **;
  value sqxo_osteoporf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxo_strokef **;
  ** FOR VARIABLE: sqxo_stroke **;
  value sqxo_strokef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_acetamf **;
  ** FOR VARIABLE: sqx_acetam **;
  value sqx_acetamf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None or < 1/Month"
    1 = "< 1 / Week"
    2 = "Once per week or more"
  ;
  ** FORMAT: sqx_acetam_freqf **;
  ** FOR VARIABLE: sqx_acetam_freq **;
  value sqx_acetam_freqf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None or < 1/Month"
    2 = "1-3 Times/Month"
    3 = "1-2 Times/Week"
    4 = "3-6 Times/Week"
    5 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_acetam_yrsf **;
  ** FOR VARIABLE: sqx_acetam_yrs **;
  value sqx_acetam_yrsf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None"
    1 = "Used less than once per Week"
    2 = "< 10 Years"
    3 = "10-19 Years"
    4 = "20-39 Years"
    5 = "40+ Years"
  ;
  ** FORMAT: sqx_advilf **;
  ** FOR VARIABLE: sqx_advil **;
  value sqx_advilf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_alevef **;
  ** FOR VARIABLE: sqx_aleve **;
  value sqx_alevef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_aspirinf **;
  ** FOR VARIABLE: sqx_aspirin **;
  value sqx_aspirinf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None"
    1 = "<1 / Week"
    2 = "Once per week or more"
  ;
  ** FORMAT: sqx_aspirin_freqf **;
  ** FOR VARIABLE: sqx_aspirin_freq **;
  value sqx_aspirin_freqf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None"
    1 = "< 1 Time/Month"
    2 = "1-3 Times/Month"
    3 = "1-2 Times/Week"
    4 = "3-6 Times/Week"
    5 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_aspirin_strf **;
  ** FOR VARIABLE: sqx_aspirin_str **;
  value sqx_aspirin_strf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None"
    1 = "Adult Strength (325mg)"
    2 = "Baby Strength (81mg)"
    3 = "Some Other Strength"
    4 = "Don't Know the Strength"
  ;
  ** FORMAT: sqx_aspirin_yrsf **;
  ** FOR VARIABLE: sqx_aspirin_yrs **;
  value sqx_aspirin_yrsf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None"
    1 = "Used less than once per Week"
    2 = "< 10 Years"
    3 = "10-19 Years"
    4 = "20-39 Years"
    5 = "40+ Years"
  ;
  ** FORMAT: sqx_bextraf **;
  ** FOR VARIABLE: sqx_bextra **;
  value sqx_bextraf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_celebrexf **;
  ** FOR VARIABLE: sqx_celebrex **;
  value sqx_celebrexf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_indocinf **;
  ** FOR VARIABLE: sqx_indocin **;
  value sqx_indocinf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_mediprenf **;
  ** FOR VARIABLE: sqx_medipren **;
  value sqx_mediprenf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_motrinf **;
  ** FOR VARIABLE: sqx_motrin **;
  value sqx_motrinf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_naprosynf **;
  ** FOR VARIABLE: sqx_naprosyn **;
  value sqx_naprosynf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_none_nsaidf **;
  ** FOR VARIABLE: sqx_none_nsaid **;
  value sqx_none_nsaidf
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_nsaidf **;
  ** FOR VARIABLE: sqx_nsaid **;
  value sqx_nsaidf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None"
    1 = "< 1 / Week"
    2 = "Once per week or more"
    3 = "Used NSAIDs, amount unknown"
  ;
  ** FORMAT: sqx_nsaid_freqf **;
  ** FOR VARIABLE: sqx_nsaid_freq **;
  value sqx_nsaid_freqf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None"
    1 = "< 1 Time/Month"
    2 = "1-3 Times/Month"
    3 = "1-2 Times/Week"
    4 = "3-6 Times/Week"
    5 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_nsaid_yrsf **;
  ** FOR VARIABLE: sqx_nsaid_yrs **;
  value sqx_nsaid_yrsf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None"
    1 = "Used less than once per Week"
    2 = "< 10 Years"
    3 = "10-19 Years"
    4 = "20-39 Years"
    5 = "40+ Years"
  ;
  ** FORMAT: sqx_nuprinf **;
  ** FOR VARIABLE: sqx_nuprin **;
  value sqx_nuprinf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_oth_nsaidf **;
  ** FOR VARIABLE: sqx_oth_nsaid **;
  value sqx_oth_nsaidf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_vioxxf **;
  ** FOR VARIABLE: sqx_vioxx **;
  value sqx_vioxxf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_activef **;
  ** FOR VARIABLE: sqx_active **;
  value sqx_activef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_active_compf **;
  ** FOR VARIABLE: sqx_active_comp **;
  value sqx_active_compf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "More Active"
    2 = "Less Active"
    3 = "About the Same"
  ;
  ** FORMAT: sqx_aerobicsf **;
  ** FOR VARIABLE: sqx_aerobics **;
  value sqx_aerobicsf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_aerobics_levf **;
  ** FOR VARIABLE: sqx_aerobics_lev **;
  value sqx_aerobics_levf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No - Did Not Do"
    1 = "None or < 1 Time/Month"
    2 = "1-3 Times/Month"
    3 = "1-2 Times/Week"
    4 = "3-6 Times/Week"
    5 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_calisthenf **;
  ** FOR VARIABLE: sqx_calisthen **;
  value sqx_calisthenf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_calisthen_levf **;
  ** FOR VARIABLE: sqx_calisthen_lev **;
  value sqx_calisthen_levf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No - Did Not Do"
    1 = "None or < 1 Time/Month"
    2 = "1-3 Times/Month"
    3 = "1-2 Times/Week"
    4 = "3-6 Times/Week"
    5 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_cyclef **;
  ** FOR VARIABLE: sqx_cycle **;
  value sqx_cyclef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_cycle_levf **;
  ** FOR VARIABLE: sqx_cycle_lev **;
  value sqx_cycle_levf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No - Did Not Do"
    1 = "None or < 1 Time/Month"
    2 = "1-3 Times/Month"
    3 = "1-2 Times/Week"
    4 = "3-6 Times/Week"
    5 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_dancef **;
  ** FOR VARIABLE: sqx_dance **;
  value sqx_dancef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_dance_levf **;
  ** FOR VARIABLE: sqx_dance_lev **;
  value sqx_dance_levf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No - Did Not Do"
    1 = "None or < 1 Time/Month"
    2 = "1-3 Times/Month"
    3 = "1-2 Times/Week"
    4 = "3-6 Times/Week"
    5 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_gardenf **;
  ** FOR VARIABLE: sqx_garden **;
  value sqx_gardenf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_garden_levf **;
  ** FOR VARIABLE: sqx_garden_lev **;
  value sqx_garden_levf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No - Did Not Do"
    1 = "None or < 1 Time/Month"
    2 = "1-3 Times/Month"
    3 = "1-2 Times/Week"
    4 = "3-6 Times/Week"
    5 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_houseworkf **;
  ** FOR VARIABLE: sqx_housework **;
  value sqx_houseworkf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None or < 1 Hour/Week"
    1 = "Around 1 Hour/Week"
    2 = "2-3 Hours/Week"
    3 = "4-5 Hours/Week"
    4 = "6-7 Hours/Week"
    5 = "7+ Hours/Week"
  ;
  ** FORMAT: sqx_jogf **;
  ** FOR VARIABLE: sqx_jog **;
  value sqx_jogf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_jog_levf **;
  ** FOR VARIABLE: sqx_jog_lev **;
  value sqx_jog_levf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No - Did Not Do"
    1 = "None or < 1 Time/Month"
    2 = "1-3 Times/Month"
    3 = "1-2 Times/Week"
    4 = "3-6 Times/Week"
    5 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_lift_weightsf **;
  ** FOR VARIABLE: sqx_lift_weights **;
  value sqx_lift_weightsf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_lift_weights_levf **;
  ** FOR VARIABLE: sqx_lift_weights_lev **;
  value sqx_lift_weights_levf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No - Did Not Do"
    1 = "None or < 1 Time/Month"
    2 = "1-3 Times/Month"
    3 = "1-2 Times/Week"
    4 = "3-6 Times/Week"
    5 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_moderatef **;
  ** FOR VARIABLE: sqx_moderate **;
  value sqx_moderatef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None or < 1 Day/Week"
    1 = "2-3 Days/Week"
    2 = "4-5 Days/Week"
    3 = "6-7 Days/Week"
  ;
  ** FORMAT: sqx_moderate_timef **;
  ** FOR VARIABLE: sqx_moderate_time **;
  value sqx_moderate_timef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None or < 15 Minutes"
    1 = "16-19 Minutes"
    2 = "20-29 Minutes"
    3 = "30-39 Minutes"
    4 = "40+ Minutes"
  ;
  ** FORMAT: sqx_pacef **;
  ** FOR VARIABLE: sqx_pace **;
  value sqx_pacef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "Easy < 2 mph"
    2 = "Normal 2-2.9 mph"
    3 = "Brisk Pace 3-3.9 mph"
    4 = "Very Brisk 4+ mph"
    5 = "Unable to Walk"
  ;
  ** FORMAT: sqx_shopf **;
  ** FOR VARIABLE: sqx_shop **;
  value sqx_shopf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None or < 1 Time/Week"
    1 = "1 Time/Week"
    2 = "2-4 Times/Week"
    3 = "5-6 Times/Week"
    4 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_stairsf **;
  ** FOR VARIABLE: sqx_stairs **;
  value sqx_stairsf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No Flights"
    1 = "1-2 Flights"
    2 = "3-4 Flights"
    3 = "5-9 Flights"
    4 = "10+ Flights"
  ;
  ** FORMAT: sqx_strenuousf **;
  ** FOR VARIABLE: sqx_strenuous **;
  value sqx_strenuousf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None or < 1 Day/Week"
    1 = "2-3 Days/Week"
    2 = "4-5 Days/Week"
    3 = "6-7 Days/Week"
  ;
  ** FORMAT: sqx_strenuous_timef **;
  ** FOR VARIABLE: sqx_strenuous_time **;
  value sqx_strenuous_timef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None or < 15 Minutes"
    1 = "16-19 Minutes"
    2 = "20-29 Minutes"
    3 = "30-39 Minutes"
    4 = "40+ Minutes"
  ;
  ** FORMAT: sqx_swimf **;
  ** FOR VARIABLE: sqx_swim **;
  value sqx_swimf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_swim_levf **;
  ** FOR VARIABLE: sqx_swim_lev **;
  value sqx_swim_levf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No - Did Not Do"
    1 = "None or < 1 Time/Month"
    2 = "1-3 Times/Month"
    3 = "1-2 Times/Week"
    4 = "3-6 Times/Week"
    5 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_walk_mif **;
  ** FOR VARIABLE: sqx_walk_mi **;
  value sqx_walk_mif
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "None or < 1 Time /Month"
    1 = "1-3 Times/Month"
    2 = "1-2 Times/Week"
    3 = "3-6 Times/Week"
    4 = "7+ Times/Week"
  ;
  ** FORMAT: sqx_work_actf **;
  ** FOR VARIABLE: sqx_work_act **;
  value sqx_work_actf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "Did Not Work"
    2 = "Mostly Sitting"
    3 = "Mostly Walking, Some Sitting"
    4 = "Mostly Walking with Some Manual Labor"
    5 = "Mostly Manual Labor"
  ;
  ** FORMAT: sqx_advise_quitf **;
  ** FOR VARIABLE: sqx_advise_quit **;
  value sqx_advise_quitf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    1 = "Yes"
    2 = "No, was not Advised to Quit"
    3 = "No, Did not See a Health Professional"
    4 = "No, Did not Smoke in Past 12 Months"
  ;
  ** FORMAT: sqx_amt_smkf **;
  ** FOR VARIABLE: sqx_amt_smk **;
  value sqx_amt_smkf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    1 = "1-5 Each Day"
    2 = "6 - Under 1 Pack Each Day"
    3 = "About 1 Pack Each Day"
    4 = "About 1 1/2 Packs Each Day"
    5 = "About 2 Packs Each Day"
    6 = "More than 2 Packs Each Day"
  ;
  ** FORMAT: sqx_lifesmoke_cig_dayf **;
  ** FOR VARIABLE: sqx_lifesmoke_cig_day **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_cig_dayf
    .F = "No Form"
    .M = "Missing"
  ;
  ** FORMAT: sqx_lifesmoke_cig_statf **;
  ** FOR VARIABLE: sqx_lifesmoke_cig_stat **;
  value sqx_lifesmoke_cig_statf
    .F = "No Form"
    .M = "Missing"
    0 = "Never Smoker"
    1 = "Current Smoker"
    2 = "Former Smoker"
  ;
  ** FORMAT: sqx_lifesmoke_durationf **;
  ** FOR VARIABLE: sqx_lifesmoke_duration **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_durationf
    .F = "No Form"
    .M = "Missing"
  ;
  ** FORMAT: sqx_lifesmoke_ever_smokerf **;
  ** FOR VARIABLE: sqx_lifesmoke_ever_smoker **;
  value sqx_lifesmoke_ever_smokerf
    .F = "No Form"
    .M = "Missing"
    0 = "Never Smoker"
    1 = "Ever Smoker"
  ;
  ** FORMAT: sqx_lifesmoke_pack_dayf **;
  ** FOR VARIABLE: sqx_lifesmoke_pack_day **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_pack_dayf
    .F = "No Form"
    .M = "Missing"
  ;
  ** FORMAT: sqx_lifesmoke_pack_yearsf **;
  ** FOR VARIABLE: sqx_lifesmoke_pack_years **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_pack_yearsf
    .F = "No Form"
    .M = "Missing"
  ;
  ** FORMAT: sqx_lifesmoke_quit_agef **;
  ** FOR VARIABLE: sqx_lifesmoke_quit_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_quit_agef
    .F = "No Form"
    .M = "Missing"
    .N = "Not Applicable"
  ;
  ** FORMAT: sqx_lifesmoke_start_agef **;
  ** FOR VARIABLE: sqx_lifesmoke_start_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_start_agef
    .F = "No Form"
    .M = "Missing"
    .N = "Not Applicable"
    .R = "Out-of-range"
  ;
  ** FORMAT: sqx_lifesmoke_years_since_quitf **;
  ** FOR VARIABLE: sqx_lifesmoke_years_since_quit **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_years_since_quitf
    .F = "No Form"
    .M = "Missing"
    .N = "Not Applicable"
  ;
  ** FORMAT: sqx_nicotine_gumf **;
  ** FOR VARIABLE: sqx_nicotine_gum **;
  value sqx_nicotine_gumf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_nicotine_othf **;
  ** FOR VARIABLE: sqx_nicotine_oth **;
  value sqx_nicotine_othf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_nicotine_patchf **;
  ** FOR VARIABLE: sqx_nicotine_patch **;
  value sqx_nicotine_patchf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_nvr_smk_regf **;
  ** FOR VARIABLE: sqx_nvr_smk_reg **;
  value sqx_nvr_smk_regf
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    1 = "Never Smoked Regularly"
  ;
  ** FORMAT: sqx_risk_lungcaf **;
  ** FOR VARIABLE: sqx_risk_lungca **;
  value sqx_risk_lungcaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "At Much Less Risk"
    2 = "At Less Risk"
    3 = "At Same Risk"
    4 = "At Higher Risk"
    5 = "At Much Higher Risk"
  ;
  ** FORMAT: sqx_smk100f **;
  ** FOR VARIABLE: sqx_smk100 **;
  value sqx_smk100f
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_smk30daysf **;
  ** FOR VARIABLE: sqx_smk30days **;
  value sqx_smk30daysf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    1 = "Every Day"
    2 = "Some Days"
    3 = "Not at All"
  ;
  ** FORMAT: sqx_smk_aid_nonef **;
  ** FOR VARIABLE: sqx_smk_aid_none **;
  value sqx_smk_aid_nonef
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_smk_behvf **;
  ** FOR VARIABLE: sqx_smk_behv **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_smk_behvf
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
  ;
  ** FORMAT: sqx_smk_crave1f **;
  ** FOR VARIABLE: sqx_smk_crave1 **;
  value sqx_smk_crave1f
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    0 = "False"
    1 = "True"
  ;
  ** FORMAT: sqx_smk_crave2f **;
  ** FOR VARIABLE: sqx_smk_crave2 **;
  value sqx_smk_crave2f
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    0 = "False"
    1 = "True"
  ;
  ** FORMAT: sqx_smk_crave3f **;
  ** FOR VARIABLE: sqx_smk_crave3 **;
  value sqx_smk_crave3f
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    0 = "False"
    1 = "True"
  ;
  ** FORMAT: sqx_smk_crave4f **;
  ** FOR VARIABLE: sqx_smk_crave4 **;
  value sqx_smk_crave4f
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    0 = "False"
    1 = "True"
  ;
  ** FORMAT: sqx_smk_exp_adultf **;
  ** FOR VARIABLE: sqx_smk_exp_adult **;
  value sqx_smk_exp_adultf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "Yes, During Most of your adult life"
    2 = "Yes, During Some of your adult life"
    3 = "No, Not at All"
  ;
  ** FORMAT: sqx_smk_exp_childf **;
  ** FOR VARIABLE: sqx_smk_exp_child **;
  value sqx_smk_exp_childf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "Yes, During Most of your childhood"
    2 = "Yes, During Some of your childhood"
    3 = "No, Not at All"
  ;
  ** FORMAT: sqx_smk_exp_workf **;
  ** FOR VARIABLE: sqx_smk_exp_work **;
  value sqx_smk_exp_workf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "Yes, During Most of your work experience"
    2 = "Yes, During Some of your work experience"
    3 = "No, Not at All"
  ;
  ** FORMAT: sqx_smk_ftndf **;
  ** FOR VARIABLE: sqx_smk_ftnd **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_smk_ftndf
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
  ;
  ** FORMAT: sqx_smk_hisf **;
  ** FOR VARIABLE: sqx_smk_his **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_smk_hisf
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
  ;
  ** FORMAT: sqx_smk_lgtf **;
  ** FOR VARIABLE: sqx_smk_lgt **;
  value sqx_smk_lgtf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    1 = "Ultra-Light"
    2 = "Light or Mild"
    3 = "Regular or Full-flavor"
    4 = "No Usual Type of Cigarettes"
  ;
  ** FORMAT: sqx_smk_mentholf **;
  ** FOR VARIABLE: sqx_smk_menthol **;
  value sqx_smk_mentholf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    1 = "Menthol"
    2 = "Non-menthol"
    3 = "No Usual Type of Cigarettes"
  ;
  ** FORMAT: sqx_smk_plan_quitf **;
  ** FOR VARIABLE: sqx_smk_plan_quit **;
  value sqx_smk_plan_quitf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    1 = "Yes, within Next 30 Days"
    2 = "Yes, within Next 6 Months"
    3 = "No"
  ;
  ** FORMAT: sqx_smk_try_quitf **;
  ** FOR VARIABLE: sqx_smk_try_quit **;
  value sqx_smk_try_quitf
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_smk_wakef **;
  ** FOR VARIABLE: sqx_smk_wake **;
  value sqx_smk_wakef
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    1 = "Within 5 Minutes"
    2 = "6-30 Minutes"
    3 = "31-60 Minutes"
    4 = "More than 60 Minutes"
  ;
  ** FORMAT: sqx_worry_lungcaf **;
  ** FOR VARIABLE: sqx_worry_lungca **;
  value sqx_worry_lungcaf
    .A = "Ambiguous"
    .F = "No Form"
    .M = "Blank"
    1 = "Rarely or Never"
    2 = "Sometimes"
    3 = "Often"
    4 = "All the Time"
  ;
  ** FORMAT: sqx_zybanf **;
  ** FOR VARIABLE: sqx_zyban **;
  value sqx_zybanf
    .F = "No Form"
    .M = "Blank"
    .N = "N/A"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_cig_changef **;
  ** FOR VARIABLE: sqxbq_cig_change **;
  value sqxbq_cig_changef
    .A = "Ambiguous in either BQ or SQX"
    .F = "Not in SQX or Not in BQ"
    .I = "BQ & SQX Inconsistent"
    .M = "Missing Data in either BQ or SQX"
    0 = "Never Smoked"
    2 = "Former (BQ) who are Still Former"
    3 = "New Quitter (Current Smoker at BQ)"
    4 = "Relapsed (Former at BQ) now Current"
    5 = "Current (was also Current at BQ)"
  ;
  ** FORMAT: sqx_actonelf **;
  ** FOR VARIABLE: sqx_actonel **;
  value sqx_actonelf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "Former"
    2 = "Current"
    3 = "Took, Unknown if Current"
  ;
  ** FORMAT: sqx_any_fmedf **;
  ** FOR VARIABLE: sqx_any_fmed **;
  value sqx_any_fmedf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "Former"
    2 = "Current"
    3 = "Took, Unknown if Current"
  ;
  ** FORMAT: sqx_bisphosf **;
  ** FOR VARIABLE: sqx_bisphos **;
  value sqx_bisphosf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "Former"
    2 = "Current"
    3 = "Took, Unknown if Current"
  ;
  ** FORMAT: sqx_bonivaf **;
  ** FOR VARIABLE: sqx_boniva **;
  value sqx_bonivaf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "Former"
    2 = "Current"
    3 = "Took, Unknown if Current"
  ;
  ** FORMAT: sqx_breastfedf **;
  ** FOR VARIABLE: sqx_breastfed **;
  value sqx_breastfedf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "None or Never Pregnant"
    1 = "< 6 Months"
    2 = "6-11 Months"
    3 = "12-35 Months"
    4 = "36+ Months"
  ;
  ** FORMAT: sqx_brst_biopf **;
  ** FOR VARIABLE: sqx_brst_biop **;
  value sqx_brst_biopf
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqx_brst_biopaf **;
  ** FOR VARIABLE: sqx_brst_biopa **;
  value sqx_brst_biopaf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "< 30"
    2 = "30-39"
    3 = "40-49"
    4 = "50-59"
    5 = "60-69"
    6 = "70+"
  ;
  ** FORMAT: sqx_brst_biopnumf **;
  ** FOR VARIABLE: sqx_brst_biopnum **;
  value sqx_brst_biopnumf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "None"
    1 = "1"
    2 = "2"
    3 = "3 or More"
  ;
  ** FORMAT: sqx_didronelf **;
  ** FOR VARIABLE: sqx_didronel **;
  value sqx_didronelf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "Former"
    2 = "Current"
    3 = "Took, Unknown if Current"
  ;
  ** FORMAT: sqx_evistaf **;
  ** FOR VARIABLE: sqx_evista **;
  value sqx_evistaf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "Former"
    2 = "Current"
    3 = "Took, Unknown if Current"
  ;
  ** FORMAT: sqx_forteof **;
  ** FOR VARIABLE: sqx_forteo **;
  value sqx_forteof
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "Former"
    2 = "Current"
    3 = "Took, Unknown if Current"
  ;
  ** FORMAT: sqx_fosamaxf **;
  ** FOR VARIABLE: sqx_fosamax **;
  value sqx_fosamaxf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "Former"
    2 = "Current"
    3 = "Took, Unknown if Current"
  ;
  ** FORMAT: sqx_mammof **;
  ** FOR VARIABLE: sqx_mammo **;
  value sqx_mammof
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "< 1 Year Ago"
    2 = "1 Year Ago"
    3 = "2-3 Years Ago"
    4 = "4+ Years Ago"
  ;
  ** FORMAT: sqx_miacalcinf **;
  ** FOR VARIABLE: sqx_miacalcin **;
  value sqx_miacalcinf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "Former"
    2 = "Current"
    3 = "Took, Unknown if Current"
  ;
  ** FORMAT: sqx_nolvadexf **;
  ** FOR VARIABLE: sqx_nolvadex **;
  value sqx_nolvadexf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "Former"
    2 = "Current"
    3 = "Took, Unknown if Current"
  ;
  ** FORMAT: sqx_papsmearf **;
  ** FOR VARIABLE: sqx_papsmear **;
  value sqx_papsmearf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "< 1 Year Ago"
    2 = "1 Year Ago"
    3 = "2-3 Years Ago"
    4 = "4+ Years Ago"
  ;
  ** FORMAT: sqx_twinsf **;
  ** FOR VARIABLE: sqx_twins **;
  value sqx_twinsf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "Not Applicable - Never Pregnant"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_hrtf **;
  ** FOR VARIABLE: sqxbq_hrt **;
  value sqxbq_hrtf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_hrt2currf **;
  ** FOR VARIABLE: sqxbq_hrt2curr **;
  value sqxbq_hrt2currf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_hrt_agef **;
  ** FOR VARIABLE: sqxbq_hrt_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqxbq_hrt_agef
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    .R = "Out of Range"
  ;
  ** FORMAT: sqxbq_hrt_agestopf **;
  ** FOR VARIABLE: sqxbq_hrt_agestop **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqxbq_hrt_agestopf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    .R = "Out of Range"
  ;
  ** FORMAT: sqxbq_hrt_ageswitchf **;
  ** FOR VARIABLE: sqxbq_hrt_ageswitch **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqxbq_hrt_ageswitchf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    .R = "Out of Range"
  ;
  ** FORMAT: sqxbq_hrt_chngf **;
  ** FOR VARIABLE: sqxbq_hrt_chng **;
  value sqxbq_hrt_chngf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "Still Taking"
    2 = "Stopped"
    3 = "Switched"
  ;
  ** FORMAT: sqxbq_hrt_statusf **;
  ** FOR VARIABLE: sqxbq_hrt_status **;
  value sqxbq_hrt_statusf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never took HRT"
    1 = "Current HRT"
    2 = "Former HRT"
    9 = "Took HRT - Unknown if Current"
  ;
  ** FORMAT: sqxbq_hrt_type1f **;
  ** FOR VARIABLE: sqxbq_hrt_type1 **;
  value sqxbq_hrt_type1f
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "Estrogen Only Pills"
    2 = "Progesterone/Progestin Pills"
    3 = "Estrogen+Progesterone Pills"
    4 = "Estrogen Creams, etc."
    5 = "Progesterone Creams, etc."
    6 = "Estrogen+Progesterone Creams, etc."
    7 = "Not Sure"
  ;
  ** FORMAT: sqxbq_hrt_type2f **;
  ** FOR VARIABLE: sqxbq_hrt_type2 **;
  value sqxbq_hrt_type2f
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "Estrogen Only Pills"
    2 = "Progesterone/Progestin Pills"
    3 = "Estrogen+Progesterone Pills"
    4 = "Estrogen Creams, etc."
    5 = "Progesterone Creams, etc."
    6 = "Estrogen+Progesterone Creams, etc."
    7 = "Not Sure"
  ;
  ** FORMAT: sqxbq_hysterf **;
  ** FOR VARIABLE: sqxbq_hyster **;
  value sqxbq_hysterf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_hysteraf **;
  ** FOR VARIABLE: sqxbq_hystera **;
  value sqxbq_hysteraf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "< 40"
    2 = "40-44"
    3 = "45-49"
    4 = "50-54"
    5 = "55-59"
    6 = "60-69"
    7 = "70-79"
    8 = "80+"
  ;
  ** FORMAT: sqxbq_ovariesf **;
  ** FOR VARIABLE: sqxbq_ovaries **;
  value sqxbq_ovariesf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_ovariesaf **;
  ** FOR VARIABLE: sqxbq_ovariesa **;
  value sqxbq_ovariesaf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "< 40"
    2 = "40-44"
    3 = "45-49"
    4 = "50-54"
    5 = "55-59"
    6 = "60-69"
    7 = "70-79"
    8 = "80+"
  ;
  ** FORMAT: sqxbq_ovariesrf **;
  ** FOR VARIABLE: sqxbq_ovariesr **;
  value sqxbq_ovariesrf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "Both Ovaries"
    2 = "One Ovary"
    3 = "Partial Removal of an Ovary"
    4 = "Not Sure"
  ;
  ** FORMAT: sqxo_hrtf **;
  ** FOR VARIABLE: sqxo_hrt **;
  value sqxo_hrtf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxo_hrt2currf **;
  ** FOR VARIABLE: sqxo_hrt2curr **;
  value sqxo_hrt2currf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxo_hrt_agef **;
  ** FOR VARIABLE: sqxo_hrt_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqxo_hrt_agef
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    .R = "Out of Range"
  ;
  ** FORMAT: sqxo_hrt_agestopf **;
  ** FOR VARIABLE: sqxo_hrt_agestop **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqxo_hrt_agestopf
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    .R = "Out of Range"
  ;
  ** FORMAT: sqxo_hrt_ageswitchf **;
  ** FOR VARIABLE: sqxo_hrt_ageswitch **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqxo_hrt_ageswitchf
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    .R = "Out of Range"
  ;
  ** FORMAT: sqxo_hrt_chngf **;
  ** FOR VARIABLE: sqxo_hrt_chng **;
  value sqxo_hrt_chngf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "Still Taking"
    2 = "Stopped"
    3 = "Switched"
  ;
  ** FORMAT: sqxo_hrt_statusf **;
  ** FOR VARIABLE: sqxo_hrt_status **;
  value sqxo_hrt_statusf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never took HRT"
    1 = "Current HRT"
    2 = "Former HRT"
    9 = "Took HRT - Unknown if Current"
  ;
  ** FORMAT: sqxo_hrt_type1f **;
  ** FOR VARIABLE: sqxo_hrt_type1 **;
  value sqxo_hrt_type1f
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "Estrogen Only Pills"
    2 = "Progesterone/Progestin Pills"
    3 = "Estrogen+Progesterone Pills"
    4 = "Estrogen Creams, etc."
    5 = "Progesterone Creams, etc."
    6 = "Estrogen+Progesterone Creams, etc."
    7 = "Not Sure"
  ;
  ** FORMAT: sqxo_hrt_type2f **;
  ** FOR VARIABLE: sqxo_hrt_type2 **;
  value sqxo_hrt_type2f
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "Estrogen Only Pills"
    2 = "Progesterone/Progestin Pills"
    3 = "Estrogen+Progesterone Pills"
    4 = "Estrogen Creams, etc."
    5 = "Progesterone Creams, etc."
    6 = "Estrogen+Progesterone Creams, etc."
    7 = "Not Sure"
  ;
  ** FORMAT: sqxo_hysterf **;
  ** FOR VARIABLE: sqxo_hyster **;
  value sqxo_hysterf
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxo_hysteraf **;
  ** FOR VARIABLE: sqxo_hystera **;
  value sqxo_hysteraf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "< 40"
    2 = "40-44"
    3 = "45-49"
    4 = "50-54"
    5 = "55-59"
    6 = "60-69"
    7 = "70-79"
    8 = "80+"
  ;
  ** FORMAT: sqxo_ovariesf **;
  ** FOR VARIABLE: sqxo_ovaries **;
  value sqxo_ovariesf
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxo_ovariesaf **;
  ** FOR VARIABLE: sqxo_ovariesa **;
  value sqxo_ovariesaf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "< 40"
    2 = "40-44"
    3 = "45-49"
    4 = "50-54"
    5 = "55-59"
    6 = "60-69"
    7 = "70-79"
    8 = "80+"
  ;
  ** FORMAT: sqxo_ovariesrf **;
  ** FOR VARIABLE: sqxo_ovariesr **;
  value sqxo_ovariesrf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "N/A"
    1 = "Both Ovaries"
    2 = "One Ovary"
    3 = "Partial Removal of an Ovary"
    4 = "Not Sure"
  ;
  ** FORMAT: sqx_bald45f **;
  ** FOR VARIABLE: sqx_bald45 **;
  value sqx_bald45f
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "No Balding"
    1 = "Mild Forehead Recession"
    2 = "Mild Forehead Recession + Small Top Balding"
    3 = "Forehead + Top Balding"
    4 = "Hair only on Sides and Back"
  ;
  ** FORMAT: sqx_urinatef **;
  ** FOR VARIABLE: sqx_urinate **;
  value sqx_urinatef
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never"
    1 = "Once"
    2 = "2 Times"
    3 = "3 Times"
    4 = "4 or More Times"
  ;
  ** FORMAT: sqx_urinateaf **;
  ** FOR VARIABLE: sqx_urinatea **;
  value sqx_urinateaf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "Never more than Once a Night"
    1 = "< 30"
    2 = "30-39"
    3 = "40-49"
    4 = "50-59"
    5 = "60-69"
    6 = "70 +"
  ;
  ** FORMAT: sqxbq_bphf **;
  ** FOR VARIABLE: sqxbq_bph **;
  value sqxbq_bphf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxbq_bphaf **;
  ** FOR VARIABLE: sqxbq_bpha **;
  value sqxbq_bphaf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "< 30"
    2 = "30-39"
    3 = "40-49"
    4 = "50-59"
    5 = "60-69"
    6 = "70 +"
  ;
  ** FORMAT: sqxo_bphf **;
  ** FOR VARIABLE: sqxo_bph **;
  value sqxo_bphf
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    0 = "No"
    1 = "Yes"
  ;
  ** FORMAT: sqxo_bphaf **;
  ** FOR VARIABLE: sqxo_bpha **;
  value sqxo_bphaf
    .A = "Ambiguous"
    .F = "No Form"
    .G = "Wrong Gender"
    .M = "Blank"
    .N = "Not Applicable"
    1 = "< 30"
    2 = "30-39"
    3 = "40-49"
    4 = "50-59"
    5 = "60-69"
    6 = "70 +"
  ;
  ** FORMAT: $plco_idv **;
  ** FOR VARIABLE: plco_id **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $plco_idv
  ;
  ** FORMAT: $sqx_buildv **;
  ** FOR VARIABLE: sqx_build **;
  ** CHARACTER VARIABLE (formats not searched/validated) **;
  value $sqx_buildv
  ;
  ** FORMAT: sqx_agev **;
  ** FOR VARIABLE: sqx_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_agev
    .F = "(.F) No Form"
  ;
  ** FORMAT: sqx_daysv **;
  ** FOR VARIABLE: sqx_days **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_daysv
    .F = "(.F) No Form"
  ;
  ** FORMAT: sqx_statusv **;
  ** FOR VARIABLE: sqx_status **;
  value sqx_statusv
    1 = "(1) Compliant, Valid"
    3 = "(3) Non-eligible"
    4 = "(4) Non-compliant"
    5 = "(5) Compliant, Invalid"
  ;
  ** FORMAT: sqx_substatusv **;
  ** FOR VARIABLE: sqx_substatus **;
  value sqx_substatusv
    1 = "(1) Compliant, Valid"
    3 = "(3) Non-eligible: Dead Before SQX"
    4 = "(4) Non-eligible: Participant Withdrew Before SQX"
    5 = "(5) Non-eligible: Not Selected, NOS"
    6 = "(6) Non-compliant: SQX Not Mailed"
    7 = "(7) Non-compliant: SQX Not Delivered"
    8 = "(8) Non-compliant: SQX Not Returned"
    9 = "(9) Compliant, Invalid: SQX Not Scanned"
    11 = "(11) Compliant, Invalid: Wrong Gender"
    12 = "(12) Compliant, Invalid: No Answers"
    13 = "(13) Compliant, Invalid: Multiple Answers"
  ;
  ** FORMAT: sqx_validv **;
  ** FOR VARIABLE: sqx_valid **;
  value sqx_validv
    0 = "(0) No Valid SQX"
    1 = "(1) Completed Valid SQX"
  ;
  ** FORMAT: sqx_incomev **;
  ** FOR VARIABLE: sqx_income **;
  value sqx_incomev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) < $20,000"
    2 = "(2) $20,000-$49,000"
    3 = "(3) $50,000-$99,000"
    4 = "(4) $100,000-$200,000"
    5 = "(5) >$200,000"
    6 = "(6) Prefer not to Answer"
  ;
  ** FORMAT: sqx_religionv **;
  ** FOR VARIABLE: sqx_religion **;
  value sqx_religionv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Catholic"
    2 = "(2) Christian Scientist"
    3 = "(3) Greek Orthodox"
    4 = "(4) Jewish"
    5 = "(5) LDS or Mormon"
    6 = "(6) Protestant"
    7 = "(7) Seventh Day Adventist"
    8 = "(8) Other (Specify)"
    9 = "(9) None"
  ;
  ** FORMAT: sqx_workstatv **;
  ** FOR VARIABLE: sqx_workstat **;
  value sqx_workstatv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Homemaker"
    2 = "(2) Employed Full-time"
    3 = "(3) Employed Part-time"
    4 = "(4) Extended Sick Leave"
    5 = "(5) Other (Specify)"
    6 = "(6) Unemployed"
    7 = "(7) Retired"
    8 = "(8) Disabled"
    10 = "(10) Retired + Other"
  ;
  ** FORMAT: sqxbq_hispanicv **;
  ** FOR VARIABLE: sqxbq_hispanic **;
  value sqxbq_hispanicv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) Non-Hispanic"
    1 = "(1) Hispanic"
  ;
  ** FORMAT: sqxbq_maritalv **;
  ** FOR VARIABLE: sqxbq_marital **;
  value sqxbq_maritalv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Married or Living as Married"
    2 = "(2) Widowed"
    3 = "(3) Divorced"
    4 = "(4) Separated"
    5 = "(5) Never Married"
  ;
  ** FORMAT: sqxbq_race7v **;
  ** FOR VARIABLE: sqxbq_race7 **;
  value sqxbq_race7v
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    1 = "(1) White"
    2 = "(2) Black or African-American"
    3 = "(3) Hispanic"
    4 = "(4) Asian"
    5 = "(5) Native Hawaiian or Other Pacific Islander"
    6 = "(6) American Indian or Alaskan Native"
    7 = "(7) Missing"
  ;
  ** FORMAT: sqxo_hispanicv **;
  ** FOR VARIABLE: sqxo_hispanic **;
  value sqxo_hispanicv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) Non-Hispanic"
    1 = "(1) Hispanic"
  ;
  ** FORMAT: sqxo_maritalv **;
  ** FOR VARIABLE: sqxo_marital **;
  value sqxo_maritalv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Married or Living as Married"
    2 = "(2) Widowed"
    3 = "(3) Divorced"
    4 = "(4) Separated"
    5 = "(5) Never Married"
  ;
  ** FORMAT: sqxo_race7v **;
  ** FOR VARIABLE: sqxo_race7 **;
  value sqxo_race7v
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    1 = "(1) White"
    2 = "(2) Black or African-American"
    3 = "(3) Hispanic"
    4 = "(4) Asian"
    5 = "(5) Native Hawaiian or Other Pacific Islander"
    6 = "(6) American Indian or Alaskan Native"
    7 = "(7) Missing"
  ;
  ** FORMAT: sqx_bmi30sv **;
  ** FOR VARIABLE: sqx_bmi30s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_bmi30sv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_bmi30scv **;
  ** FOR VARIABLE: sqx_bmi30sc **;
  value sqx_bmi30scv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Height or Weight not in Reasonable Range"
    1 = "(1) 0-18.5"
    2 = "(2) > 18.5-25"
    3 = "(3) > 25-30"
    4 = "(4) > 30"
  ;
  ** FORMAT: sqx_bmi40sv **;
  ** FOR VARIABLE: sqx_bmi40s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_bmi40sv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_bmi40scv **;
  ** FOR VARIABLE: sqx_bmi40sc **;
  value sqx_bmi40scv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Height or Weight not in Reasonable Range"
    1 = "(1) 0-18.5"
    2 = "(2) > 18.5-25"
    3 = "(3) > 25-30"
    4 = "(4) > 30"
  ;
  ** FORMAT: sqx_bmi50sv **;
  ** FOR VARIABLE: sqx_bmi50s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_bmi50sv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_bmi50scv **;
  ** FOR VARIABLE: sqx_bmi50sc **;
  value sqx_bmi50scv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Height or Weight not in Reasonable Range"
    1 = "(1) 0-18.5"
    2 = "(2) > 18.5-25"
    3 = "(3) > 25-30"
    4 = "(4) > 30"
  ;
  ** FORMAT: sqx_bmi60sv **;
  ** FOR VARIABLE: sqx_bmi60s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_bmi60sv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A - Has not Reached this Age"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_bmi60scv **;
  ** FOR VARIABLE: sqx_bmi60sc **;
  value sqx_bmi60scv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A - Has not Reached this Age"
    .R = "(.R) Height or Weight not in Reasonable Range"
    1 = "(1) 0-18.5"
    2 = "(2) > 18.5-25"
    3 = "(3) > 25-30"
    4 = "(4) > 30"
  ;
  ** FORMAT: sqx_bmi70sv **;
  ** FOR VARIABLE: sqx_bmi70s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_bmi70sv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A - Has not Reached this Age"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_bmi70scv **;
  ** FOR VARIABLE: sqx_bmi70sc **;
  value sqx_bmi70scv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A - Has not Reached this Age"
    .R = "(.R) Height or Weight not in Reasonable Range"
    1 = "(1) 0-18.5"
    2 = "(2) > 18.5-25"
    3 = "(3) > 25-30"
    4 = "(4) > 30"
  ;
  ** FORMAT: sqx_bmi_curcv **;
  ** FOR VARIABLE: sqx_bmi_curc **;
  value sqx_bmi_curcv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Height or Weight not in Reasonable Range"
    1 = "(1) 0-18.5"
    2 = "(2) > 18.5-25"
    3 = "(3) > 25-30"
    4 = "(4) > 30"
  ;
  ** FORMAT: sqx_bmi_currv **;
  ** FOR VARIABLE: sqx_bmi_curr **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_bmi_currv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_gain_areav **;
  ** FOR VARIABLE: sqx_gain_area **;
  value sqx_gain_areav
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Don't Gain Weight"
    2 = "(2) Around Chest and Shoulders"
    3 = "(3) Around Waist and Stomach"
    4 = "(4) Around Hips and Thighs"
    5 = "(5) Equally All Over"
    6 = "(6) Other (Specify)"
    8 = "(8) Multiple Areas"
  ;
  ** FORMAT: sqx_heightv **;
  ** FOR VARIABLE: sqx_height **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_heightv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_lose_areav **;
  ** FOR VARIABLE: sqx_lose_area **;
  value sqx_lose_areav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Don't Try to Lose Weight"
    2 = "(2) Can't Lose Weight"
    3 = "(3) Around Chest and Shoulders"
    4 = "(4) Around Waist and Stomach"
    5 = "(5) Around Hips and Thighs"
    6 = "(6) Equally All Over"
    7 = "(7) Other (Specify)"
  ;
  ** FORMAT: sqx_sit_htv **;
  ** FOR VARIABLE: sqx_sit_ht **;
  value sqx_sit_htv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Especially Tall"
    2 = "(2) Somewhat Tall"
    3 = "(3) Typical"
    4 = "(4) Somewhat Short"
    5 = "(5) Especially Short"
  ;
  ** FORMAT: sqx_waist_hipv **;
  ** FOR VARIABLE: sqx_waist_hip **;
  value sqx_waist_hipv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Waist much Smaller than Hips"
    2 = "(2) Waist Somewhat Smaller than Hips"
    3 = "(3) Waist Similar to Hips"
    4 = "(4) Waist Somewhat Larger than Hips"
    5 = "(5) Waist much Larger than Hips"
  ;
  ** FORMAT: sqx_wt30sv **;
  ** FOR VARIABLE: sqx_wt30s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_wt30sv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_wt40sv **;
  ** FOR VARIABLE: sqx_wt40s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_wt40sv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_wt50sv **;
  ** FOR VARIABLE: sqx_wt50s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_wt50sv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_wt60sv **;
  ** FOR VARIABLE: sqx_wt60s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_wt60sv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A - Has not Reached this Age"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_wt70sv **;
  ** FOR VARIABLE: sqx_wt70s **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_wt70sv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A - Has not Reached this Age"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_wt_currv **;
  ** FOR VARIABLE: sqx_wt_curr **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_wt_currv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqx_brothersv **;
  ** FOR VARIABLE: sqx_brothers **;
  value sqx_brothersv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) 0"
    1 = "(1) 1"
    2 = "(2) 2"
    3 = "(3) 3"
    4 = "(4) 4"
    5 = "(5) 5+"
  ;
  ** FORMAT: sqx_dad_agev **;
  ** FOR VARIABLE: sqx_dad_age **;
  value sqx_dad_agev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) < 20"
    2 = "(2) 20-29"
    3 = "(3) 30-39"
    4 = "(4) 40-49"
    5 = "(5) 50-59"
    6 = "(6) 60-69"
    7 = "(7) 70+"
    8 = "(8) Unknown"
  ;
  ** FORMAT: sqx_daughtersv **;
  ** FOR VARIABLE: sqx_daughters **;
  value sqx_daughtersv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) 0"
    1 = "(1) 1"
    2 = "(2) 2"
    3 = "(3) 3"
    4 = "(4) 4"
    5 = "(5) 5+"
  ;
  ** FORMAT: sqx_fh_bladv **;
  ** FOR VARIABLE: sqx_fh_blad **;
  value sqx_fh_bladv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_fh_breastv **;
  ** FOR VARIABLE: sqx_fh_breast **;
  value sqx_fh_breastv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_fh_cancer_fv **;
  ** FOR VARIABLE: sqx_fh_cancer_f **;
  value sqx_fh_cancer_fv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_fh_colov **;
  ** FOR VARIABLE: sqx_fh_colo **;
  value sqx_fh_colov
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_fh_dnknv **;
  ** FOR VARIABLE: sqx_fh_dnkn **;
  value sqx_fh_dnknv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_fh_endov **;
  ** FOR VARIABLE: sqx_fh_endo **;
  value sqx_fh_endov
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_fh_leukv **;
  ** FOR VARIABLE: sqx_fh_leuk **;
  value sqx_fh_leukv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_fh_lungv **;
  ** FOR VARIABLE: sqx_fh_lung **;
  value sqx_fh_lungv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_fh_lymphv **;
  ** FOR VARIABLE: sqx_fh_lymph **;
  value sqx_fh_lymphv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_fh_othrv **;
  ** FOR VARIABLE: sqx_fh_othr **;
  value sqx_fh_othrv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_fh_ovarv **;
  ** FOR VARIABLE: sqx_fh_ovar **;
  value sqx_fh_ovarv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_fh_prosv **;
  ** FOR VARIABLE: sqx_fh_pros **;
  value sqx_fh_prosv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_mom_agev **;
  ** FOR VARIABLE: sqx_mom_age **;
  value sqx_mom_agev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) < 20"
    2 = "(2) 20-24"
    3 = "(3) 25-29"
    4 = "(4) 30-34"
    5 = "(5) 35-39"
    6 = "(6) 40-44"
    7 = "(7) 45+"
    8 = "(8) Unknown"
  ;
  ** FORMAT: sqx_sistersv **;
  ** FOR VARIABLE: sqx_sisters **;
  value sqx_sistersv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) 0"
    1 = "(1) 1"
    2 = "(2) 2"
    3 = "(3) 3"
    4 = "(4) 4"
    5 = "(5) 5+"
  ;
  ** FORMAT: sqx_sonsv **;
  ** FOR VARIABLE: sqx_sons **;
  value sqx_sonsv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) 0"
    1 = "(1) 1"
    2 = "(2) 2"
    3 = "(3) 3"
    4 = "(4) 4"
    5 = "(5) 5+"
  ;
  ** FORMAT: sqx_arthritisav **;
  ** FOR VARIABLE: sqx_arthritisa **;
  value sqx_arthritisav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) < 30"
    2 = "(2) 30-39"
    3 = "(3) 40-49"
    4 = "(4) 50-59"
    5 = "(5) 60-69"
    6 = "(6) 70 +"
  ;
  ** FORMAT: sqx_asthmav **;
  ** FOR VARIABLE: sqx_asthma **;
  value sqx_asthmav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_asthmaav **;
  ** FOR VARIABLE: sqx_asthmaa **;
  value sqx_asthmaav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) < 50"
    2 = "(2) 50-59"
    3 = "(3) 60-69"
    4 = "(4) 70 +"
  ;
  ** FORMAT: sqx_broke_armv **;
  ** FOR VARIABLE: sqx_broke_arm **;
  value sqx_broke_armv
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_broke_hipv **;
  ** FOR VARIABLE: sqx_broke_hip **;
  value sqx_broke_hipv
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_broke_nonev **;
  ** FOR VARIABLE: sqx_broke_none **;
  value sqx_broke_nonev
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_broke_oth_bonev **;
  ** FOR VARIABLE: sqx_broke_oth_bone **;
  value sqx_broke_oth_bonev
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_broke_vertebrav **;
  ** FOR VARIABLE: sqx_broke_vertebra **;
  value sqx_broke_vertebrav
    .F = "(.F) No Form"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_cholesterolv **;
  ** FOR VARIABLE: sqx_cholesterol **;
  value sqx_cholesterolv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_cholesterolav **;
  ** FOR VARIABLE: sqx_cholesterola **;
  value sqx_cholesterolav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) < 50"
    2 = "(2) 50-59"
    3 = "(3) 60-69"
    4 = "(4) 70 +"
  ;
  ** FORMAT: sqx_diabetesav **;
  ** FOR VARIABLE: sqx_diabetesa **;
  value sqx_diabetesav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) < 50"
    2 = "(2) 50-59"
    3 = "(3) 60-69"
    4 = "(4) 70 +"
  ;
  ** FORMAT: sqx_emphysemaav **;
  ** FOR VARIABLE: sqx_emphysemaa **;
  value sqx_emphysemaav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) < 50"
    2 = "(2) 50-59"
    3 = "(3) 60-69"
    4 = "(4) 70 +"
  ;
  ** FORMAT: sqx_heartaav **;
  ** FOR VARIABLE: sqx_heartaa **;
  value sqx_heartaav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) < 50"
    2 = "(2) 50-59"
    3 = "(3) 60-69"
    4 = "(4) 70 +"
  ;
  ** FORMAT: sqx_hypertenav **;
  ** FOR VARIABLE: sqx_hypertena **;
  value sqx_hypertenav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) < 50"
    2 = "(2) 50-59"
    3 = "(3) 60-69"
    4 = "(4) 70 +"
  ;
  ** FORMAT: sqx_osteoporav **;
  ** FOR VARIABLE: sqx_osteopora **;
  value sqx_osteoporav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) < 50"
    2 = "(2) 50-59"
    3 = "(3) 60-69"
    4 = "(4) 70 +"
  ;
  ** FORMAT: sqx_strokeav **;
  ** FOR VARIABLE: sqx_strokea **;
  value sqx_strokeav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) < 50"
    2 = "(2) 50-59"
    3 = "(3) 60-69"
    4 = "(4) 70 +"
  ;
  ** FORMAT: sqxbq_arthritisv **;
  ** FOR VARIABLE: sqxbq_arthritis **;
  value sqxbq_arthritisv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_arthritistv **;
  ** FOR VARIABLE: sqxbq_arthritist **;
  value sqxbq_arthritistv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) Rheumatoid Arthritis"
    2 = "(2) Osteoarthritis"
    3 = "(3) Not Sure Which Type"
  ;
  ** FORMAT: sqxbq_diabetesv **;
  ** FOR VARIABLE: sqxbq_diabetes **;
  value sqxbq_diabetesv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_emphysemav **;
  ** FOR VARIABLE: sqxbq_emphysema **;
  value sqxbq_emphysemav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_heartav **;
  ** FOR VARIABLE: sqxbq_hearta **;
  value sqxbq_heartav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_hypertenv **;
  ** FOR VARIABLE: sqxbq_hyperten **;
  value sqxbq_hypertenv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_osteoporv **;
  ** FOR VARIABLE: sqxbq_osteopor **;
  value sqxbq_osteoporv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_strokev **;
  ** FOR VARIABLE: sqxbq_stroke **;
  value sqxbq_strokev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxo_arthritisv **;
  ** FOR VARIABLE: sqxo_arthritis **;
  value sqxo_arthritisv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxo_arthritistv **;
  ** FOR VARIABLE: sqxo_arthritist **;
  value sqxo_arthritistv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) Rheumatoid Arthritis"
    2 = "(2) Osteoarthritis"
    3 = "(3) Not Sure Which Type"
  ;
  ** FORMAT: sqxo_diabetesv **;
  ** FOR VARIABLE: sqxo_diabetes **;
  value sqxo_diabetesv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxo_emphysemav **;
  ** FOR VARIABLE: sqxo_emphysema **;
  value sqxo_emphysemav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxo_heartav **;
  ** FOR VARIABLE: sqxo_hearta **;
  value sqxo_heartav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxo_hypertenv **;
  ** FOR VARIABLE: sqxo_hyperten **;
  value sqxo_hypertenv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxo_osteoporv **;
  ** FOR VARIABLE: sqxo_osteopor **;
  value sqxo_osteoporv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxo_strokev **;
  ** FOR VARIABLE: sqxo_stroke **;
  value sqxo_strokev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_acetamv **;
  ** FOR VARIABLE: sqx_acetam **;
  value sqx_acetamv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None or < 1/Month"
    1 = "(1) < 1 / Week"
    2 = "(2) Once per week or more"
  ;
  ** FORMAT: sqx_acetam_freqv **;
  ** FOR VARIABLE: sqx_acetam_freq **;
  value sqx_acetam_freqv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None or < 1/Month"
    2 = "(2) 1-3 Times/Month"
    3 = "(3) 1-2 Times/Week"
    4 = "(4) 3-6 Times/Week"
    5 = "(5) 7+ Times/Week"
  ;
  ** FORMAT: sqx_acetam_yrsv **;
  ** FOR VARIABLE: sqx_acetam_yrs **;
  value sqx_acetam_yrsv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None"
    1 = "(1) Used less than once per Week"
    2 = "(2) < 10 Years"
    3 = "(3) 10-19 Years"
    4 = "(4) 20-39 Years"
    5 = "(5) 40+ Years"
  ;
  ** FORMAT: sqx_advilv **;
  ** FOR VARIABLE: sqx_advil **;
  value sqx_advilv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_alevev **;
  ** FOR VARIABLE: sqx_aleve **;
  value sqx_alevev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_aspirinv **;
  ** FOR VARIABLE: sqx_aspirin **;
  value sqx_aspirinv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None"
    1 = "(1) <1 / Week"
    2 = "(2) Once per week or more"
  ;
  ** FORMAT: sqx_aspirin_freqv **;
  ** FOR VARIABLE: sqx_aspirin_freq **;
  value sqx_aspirin_freqv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None"
    1 = "(1) < 1 Time/Month"
    2 = "(2) 1-3 Times/Month"
    3 = "(3) 1-2 Times/Week"
    4 = "(4) 3-6 Times/Week"
    5 = "(5) 7+ Times/Week"
  ;
  ** FORMAT: sqx_aspirin_strv **;
  ** FOR VARIABLE: sqx_aspirin_str **;
  value sqx_aspirin_strv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None"
    1 = "(1) Adult Strength (325mg)"
    2 = "(2) Baby Strength (81mg)"
    3 = "(3) Some Other Strength"
    4 = "(4) Don't Know the Strength"
  ;
  ** FORMAT: sqx_aspirin_yrsv **;
  ** FOR VARIABLE: sqx_aspirin_yrs **;
  value sqx_aspirin_yrsv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None"
    1 = "(1) Used less than once per Week"
    2 = "(2) < 10 Years"
    3 = "(3) 10-19 Years"
    4 = "(4) 20-39 Years"
    5 = "(5) 40+ Years"
  ;
  ** FORMAT: sqx_bextrav **;
  ** FOR VARIABLE: sqx_bextra **;
  value sqx_bextrav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_celebrexv **;
  ** FOR VARIABLE: sqx_celebrex **;
  value sqx_celebrexv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_indocinv **;
  ** FOR VARIABLE: sqx_indocin **;
  value sqx_indocinv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_mediprenv **;
  ** FOR VARIABLE: sqx_medipren **;
  value sqx_mediprenv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_motrinv **;
  ** FOR VARIABLE: sqx_motrin **;
  value sqx_motrinv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_naprosynv **;
  ** FOR VARIABLE: sqx_naprosyn **;
  value sqx_naprosynv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_none_nsaidv **;
  ** FOR VARIABLE: sqx_none_nsaid **;
  value sqx_none_nsaidv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_nsaidv **;
  ** FOR VARIABLE: sqx_nsaid **;
  value sqx_nsaidv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None"
    1 = "(1) < 1 / Week"
    2 = "(2) Once per week or more"
    3 = "(3) Used NSAIDs, amount unknown"
  ;
  ** FORMAT: sqx_nsaid_freqv **;
  ** FOR VARIABLE: sqx_nsaid_freq **;
  value sqx_nsaid_freqv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None"
    1 = "(1) < 1 Time/Month"
    2 = "(2) 1-3 Times/Month"
    3 = "(3) 1-2 Times/Week"
    4 = "(4) 3-6 Times/Week"
    5 = "(5) 7+ Times/Week"
  ;
  ** FORMAT: sqx_nsaid_yrsv **;
  ** FOR VARIABLE: sqx_nsaid_yrs **;
  value sqx_nsaid_yrsv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None"
    1 = "(1) Used less than once per Week"
    2 = "(2) < 10 Years"
    3 = "(3) 10-19 Years"
    4 = "(4) 20-39 Years"
    5 = "(5) 40+ Years"
  ;
  ** FORMAT: sqx_nuprinv **;
  ** FOR VARIABLE: sqx_nuprin **;
  value sqx_nuprinv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_oth_nsaidv **;
  ** FOR VARIABLE: sqx_oth_nsaid **;
  value sqx_oth_nsaidv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_vioxxv **;
  ** FOR VARIABLE: sqx_vioxx **;
  value sqx_vioxxv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_activev **;
  ** FOR VARIABLE: sqx_active **;
  value sqx_activev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_active_compv **;
  ** FOR VARIABLE: sqx_active_comp **;
  value sqx_active_compv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) More Active"
    2 = "(2) Less Active"
    3 = "(3) About the Same"
  ;
  ** FORMAT: sqx_aerobicsv **;
  ** FOR VARIABLE: sqx_aerobics **;
  value sqx_aerobicsv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_aerobics_levv **;
  ** FOR VARIABLE: sqx_aerobics_lev **;
  value sqx_aerobics_levv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No - Did Not Do"
    1 = "(1) None or < 1 Time/Month"
    2 = "(2) 1-3 Times/Month"
    3 = "(3) 1-2 Times/Week"
    4 = "(4) 3-6 Times/Week"
    5 = "(5) 7+ Times/Week"
  ;
  ** FORMAT: sqx_calisthenv **;
  ** FOR VARIABLE: sqx_calisthen **;
  value sqx_calisthenv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_calisthen_levv **;
  ** FOR VARIABLE: sqx_calisthen_lev **;
  value sqx_calisthen_levv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No - Did Not Do"
    1 = "(1) None or < 1 Time/Month"
    2 = "(2) 1-3 Times/Month"
    3 = "(3) 1-2 Times/Week"
    4 = "(4) 3-6 Times/Week"
    5 = "(5) 7+ Times/Week"
  ;
  ** FORMAT: sqx_cyclev **;
  ** FOR VARIABLE: sqx_cycle **;
  value sqx_cyclev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_cycle_levv **;
  ** FOR VARIABLE: sqx_cycle_lev **;
  value sqx_cycle_levv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No - Did Not Do"
    1 = "(1) None or < 1 Time/Month"
    2 = "(2) 1-3 Times/Month"
    3 = "(3) 1-2 Times/Week"
    4 = "(4) 3-6 Times/Week"
    5 = "(5) 7+ Times/Week"
  ;
  ** FORMAT: sqx_dancev **;
  ** FOR VARIABLE: sqx_dance **;
  value sqx_dancev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_dance_levv **;
  ** FOR VARIABLE: sqx_dance_lev **;
  value sqx_dance_levv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No - Did Not Do"
    1 = "(1) None or < 1 Time/Month"
    2 = "(2) 1-3 Times/Month"
    3 = "(3) 1-2 Times/Week"
    4 = "(4) 3-6 Times/Week"
    5 = "(5) 7+ Times/Week"
  ;
  ** FORMAT: sqx_gardenv **;
  ** FOR VARIABLE: sqx_garden **;
  value sqx_gardenv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_garden_levv **;
  ** FOR VARIABLE: sqx_garden_lev **;
  value sqx_garden_levv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No - Did Not Do"
    1 = "(1) None or < 1 Time/Month"
    2 = "(2) 1-3 Times/Month"
    3 = "(3) 1-2 Times/Week"
    4 = "(4) 3-6 Times/Week"
    5 = "(5) 7+ Times/Week"
  ;
  ** FORMAT: sqx_houseworkv **;
  ** FOR VARIABLE: sqx_housework **;
  value sqx_houseworkv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None or < 1 Hour/Week"
    1 = "(1) Around 1 Hour/Week"
    2 = "(2) 2-3 Hours/Week"
    3 = "(3) 4-5 Hours/Week"
    4 = "(4) 6-7 Hours/Week"
    5 = "(5) 7+ Hours/Week"
  ;
  ** FORMAT: sqx_jogv **;
  ** FOR VARIABLE: sqx_jog **;
  value sqx_jogv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_jog_levv **;
  ** FOR VARIABLE: sqx_jog_lev **;
  value sqx_jog_levv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No - Did Not Do"
    1 = "(1) None or < 1 Time/Month"
    2 = "(2) 1-3 Times/Month"
    3 = "(3) 1-2 Times/Week"
    4 = "(4) 3-6 Times/Week"
    5 = "(5) 7+ Times/Week"
  ;
  ** FORMAT: sqx_lift_weightsv **;
  ** FOR VARIABLE: sqx_lift_weights **;
  value sqx_lift_weightsv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_lift_weights_levv **;
  ** FOR VARIABLE: sqx_lift_weights_lev **;
  value sqx_lift_weights_levv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No - Did Not Do"
    1 = "(1) None or < 1 Time/Month"
    2 = "(2) 1-3 Times/Month"
    3 = "(3) 1-2 Times/Week"
    4 = "(4) 3-6 Times/Week"
    5 = "(5) 7+ Times/Week"
  ;
  ** FORMAT: sqx_moderatev **;
  ** FOR VARIABLE: sqx_moderate **;
  value sqx_moderatev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None or < 1 Day/Week"
    1 = "(1) 2-3 Days/Week"
    2 = "(2) 4-5 Days/Week"
    3 = "(3) 6-7 Days/Week"
  ;
  ** FORMAT: sqx_moderate_timev **;
  ** FOR VARIABLE: sqx_moderate_time **;
  value sqx_moderate_timev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None or < 15 Minutes"
    1 = "(1) 16-19 Minutes"
    2 = "(2) 20-29 Minutes"
    3 = "(3) 30-39 Minutes"
    4 = "(4) 40+ Minutes"
  ;
  ** FORMAT: sqx_pacev **;
  ** FOR VARIABLE: sqx_pace **;
  value sqx_pacev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Easy < 2 mph"
    2 = "(2) Normal 2-2.9 mph"
    3 = "(3) Brisk Pace 3-3.9 mph"
    4 = "(4) Very Brisk 4+ mph"
    5 = "(5) Unable to Walk"
  ;
  ** FORMAT: sqx_shopv **;
  ** FOR VARIABLE: sqx_shop **;
  value sqx_shopv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None or < 1 Time/Week"
    1 = "(1) 1 Time/Week"
    2 = "(2) 2-4 Times/Week"
    3 = "(3) 5-6 Times/Week"
    4 = "(4) 7+ Times/Week"
  ;
  ** FORMAT: sqx_stairsv **;
  ** FOR VARIABLE: sqx_stairs **;
  value sqx_stairsv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No Flights"
    1 = "(1) 1-2 Flights"
    2 = "(2) 3-4 Flights"
    3 = "(3) 5-9 Flights"
    4 = "(4) 10+ Flights"
  ;
  ** FORMAT: sqx_strenuousv **;
  ** FOR VARIABLE: sqx_strenuous **;
  value sqx_strenuousv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None or < 1 Day/Week"
    1 = "(1) 2-3 Days/Week"
    2 = "(2) 4-5 Days/Week"
    3 = "(3) 6-7 Days/Week"
  ;
  ** FORMAT: sqx_strenuous_timev **;
  ** FOR VARIABLE: sqx_strenuous_time **;
  value sqx_strenuous_timev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None or < 15 Minutes"
    1 = "(1) 16-19 Minutes"
    2 = "(2) 20-29 Minutes"
    3 = "(3) 30-39 Minutes"
    4 = "(4) 40+ Minutes"
  ;
  ** FORMAT: sqx_swimv **;
  ** FOR VARIABLE: sqx_swim **;
  value sqx_swimv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_swim_levv **;
  ** FOR VARIABLE: sqx_swim_lev **;
  value sqx_swim_levv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No - Did Not Do"
    1 = "(1) None or < 1 Time/Month"
    2 = "(2) 1-3 Times/Month"
    3 = "(3) 1-2 Times/Week"
    4 = "(4) 3-6 Times/Week"
    5 = "(5) 7+ Times/Week"
  ;
  ** FORMAT: sqx_walk_miv **;
  ** FOR VARIABLE: sqx_walk_mi **;
  value sqx_walk_miv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) None or < 1 Time /Month"
    1 = "(1) 1-3 Times/Month"
    2 = "(2) 1-2 Times/Week"
    3 = "(3) 3-6 Times/Week"
    4 = "(4) 7+ Times/Week"
  ;
  ** FORMAT: sqx_work_actv **;
  ** FOR VARIABLE: sqx_work_act **;
  value sqx_work_actv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Did Not Work"
    2 = "(2) Mostly Sitting"
    3 = "(3) Mostly Walking, Some Sitting"
    4 = "(4) Mostly Walking with Some Manual Labor"
    5 = "(5) Mostly Manual Labor"
  ;
  ** FORMAT: sqx_advise_quitv **;
  ** FOR VARIABLE: sqx_advise_quit **;
  value sqx_advise_quitv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Yes"
    2 = "(2) No, was not Advised to Quit"
    3 = "(3) No, Did not See a Health Professional"
    4 = "(4) No, Did not Smoke in Past 12 Months"
  ;
  ** FORMAT: sqx_amt_smkv **;
  ** FOR VARIABLE: sqx_amt_smk **;
  value sqx_amt_smkv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) 1-5 Each Day"
    2 = "(2) 6 - Under 1 Pack Each Day"
    3 = "(3) About 1 Pack Each Day"
    4 = "(4) About 1 1/2 Packs Each Day"
    5 = "(5) About 2 Packs Each Day"
    6 = "(6) More than 2 Packs Each Day"
  ;
  ** FORMAT: sqx_lifesmoke_cig_dayv **;
  ** FOR VARIABLE: sqx_lifesmoke_cig_day **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_cig_dayv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
  ;
  ** FORMAT: sqx_lifesmoke_cig_statv **;
  ** FOR VARIABLE: sqx_lifesmoke_cig_stat **;
  value sqx_lifesmoke_cig_statv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    0 = "(0) Never Smoker"
    1 = "(1) Current Smoker"
    2 = "(2) Former Smoker"
  ;
  ** FORMAT: sqx_lifesmoke_durationv **;
  ** FOR VARIABLE: sqx_lifesmoke_duration **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_durationv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
  ;
  ** FORMAT: sqx_lifesmoke_ever_smokerv **;
  ** FOR VARIABLE: sqx_lifesmoke_ever_smoker **;
  value sqx_lifesmoke_ever_smokerv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    0 = "(0) Never Smoker"
    1 = "(1) Ever Smoker"
  ;
  ** FORMAT: sqx_lifesmoke_pack_dayv **;
  ** FOR VARIABLE: sqx_lifesmoke_pack_day **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_pack_dayv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
  ;
  ** FORMAT: sqx_lifesmoke_pack_yearsv **;
  ** FOR VARIABLE: sqx_lifesmoke_pack_years **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_pack_yearsv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
  ;
  ** FORMAT: sqx_lifesmoke_quit_agev **;
  ** FOR VARIABLE: sqx_lifesmoke_quit_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_quit_agev
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    .N = "(.N) Not Applicable"
  ;
  ** FORMAT: sqx_lifesmoke_start_agev **;
  ** FOR VARIABLE: sqx_lifesmoke_start_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_start_agev
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    .N = "(.N) Not Applicable"
    .R = "(.R) Out-of-range"
  ;
  ** FORMAT: sqx_lifesmoke_years_since_quitv **;
  ** FOR VARIABLE: sqx_lifesmoke_years_since_quit **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_lifesmoke_years_since_quitv
    .F = "(.F) No Form"
    .M = "(.M) Missing"
    .N = "(.N) Not Applicable"
  ;
  ** FORMAT: sqx_nicotine_gumv **;
  ** FOR VARIABLE: sqx_nicotine_gum **;
  value sqx_nicotine_gumv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_nicotine_othv **;
  ** FOR VARIABLE: sqx_nicotine_oth **;
  value sqx_nicotine_othv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_nicotine_patchv **;
  ** FOR VARIABLE: sqx_nicotine_patch **;
  value sqx_nicotine_patchv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_nvr_smk_regv **;
  ** FOR VARIABLE: sqx_nvr_smk_reg **;
  value sqx_nvr_smk_regv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Never Smoked Regularly"
  ;
  ** FORMAT: sqx_risk_lungcav **;
  ** FOR VARIABLE: sqx_risk_lungca **;
  value sqx_risk_lungcav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) At Much Less Risk"
    2 = "(2) At Less Risk"
    3 = "(3) At Same Risk"
    4 = "(4) At Higher Risk"
    5 = "(5) At Much Higher Risk"
  ;
  ** FORMAT: sqx_smk100v **;
  ** FOR VARIABLE: sqx_smk100 **;
  value sqx_smk100v
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_smk30daysv **;
  ** FOR VARIABLE: sqx_smk30days **;
  value sqx_smk30daysv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Every Day"
    2 = "(2) Some Days"
    3 = "(3) Not at All"
  ;
  ** FORMAT: sqx_smk_aid_nonev **;
  ** FOR VARIABLE: sqx_smk_aid_none **;
  value sqx_smk_aid_nonev
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_smk_behvv **;
  ** FOR VARIABLE: sqx_smk_behv **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_smk_behvv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
  ;
  ** FORMAT: sqx_smk_crave1v **;
  ** FOR VARIABLE: sqx_smk_crave1 **;
  value sqx_smk_crave1v
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    0 = "(0) False"
    1 = "(1) True"
  ;
  ** FORMAT: sqx_smk_crave2v **;
  ** FOR VARIABLE: sqx_smk_crave2 **;
  value sqx_smk_crave2v
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    0 = "(0) False"
    1 = "(1) True"
  ;
  ** FORMAT: sqx_smk_crave3v **;
  ** FOR VARIABLE: sqx_smk_crave3 **;
  value sqx_smk_crave3v
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    0 = "(0) False"
    1 = "(1) True"
  ;
  ** FORMAT: sqx_smk_crave4v **;
  ** FOR VARIABLE: sqx_smk_crave4 **;
  value sqx_smk_crave4v
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    0 = "(0) False"
    1 = "(1) True"
  ;
  ** FORMAT: sqx_smk_exp_adultv **;
  ** FOR VARIABLE: sqx_smk_exp_adult **;
  value sqx_smk_exp_adultv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Yes, During Most of your adult life"
    2 = "(2) Yes, During Some of your adult life"
    3 = "(3) No, Not at All"
  ;
  ** FORMAT: sqx_smk_exp_childv **;
  ** FOR VARIABLE: sqx_smk_exp_child **;
  value sqx_smk_exp_childv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Yes, During Most of your childhood"
    2 = "(2) Yes, During Some of your childhood"
    3 = "(3) No, Not at All"
  ;
  ** FORMAT: sqx_smk_exp_workv **;
  ** FOR VARIABLE: sqx_smk_exp_work **;
  value sqx_smk_exp_workv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Yes, During Most of your work experience"
    2 = "(2) Yes, During Some of your work experience"
    3 = "(3) No, Not at All"
  ;
  ** FORMAT: sqx_smk_ftndv **;
  ** FOR VARIABLE: sqx_smk_ftnd **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_smk_ftndv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
  ;
  ** FORMAT: sqx_smk_hisv **;
  ** FOR VARIABLE: sqx_smk_his **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqx_smk_hisv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
  ;
  ** FORMAT: sqx_smk_lgtv **;
  ** FOR VARIABLE: sqx_smk_lgt **;
  value sqx_smk_lgtv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Ultra-Light"
    2 = "(2) Light or Mild"
    3 = "(3) Regular or Full-flavor"
    4 = "(4) No Usual Type of Cigarettes"
  ;
  ** FORMAT: sqx_smk_mentholv **;
  ** FOR VARIABLE: sqx_smk_menthol **;
  value sqx_smk_mentholv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Menthol"
    2 = "(2) Non-menthol"
    3 = "(3) No Usual Type of Cigarettes"
  ;
  ** FORMAT: sqx_smk_plan_quitv **;
  ** FOR VARIABLE: sqx_smk_plan_quit **;
  value sqx_smk_plan_quitv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Yes, within Next 30 Days"
    2 = "(2) Yes, within Next 6 Months"
    3 = "(3) No"
  ;
  ** FORMAT: sqx_smk_try_quitv **;
  ** FOR VARIABLE: sqx_smk_try_quit **;
  value sqx_smk_try_quitv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_smk_wakev **;
  ** FOR VARIABLE: sqx_smk_wake **;
  value sqx_smk_wakev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Within 5 Minutes"
    2 = "(2) 6-30 Minutes"
    3 = "(3) 31-60 Minutes"
    4 = "(4) More than 60 Minutes"
  ;
  ** FORMAT: sqx_worry_lungcav **;
  ** FOR VARIABLE: sqx_worry_lungca **;
  value sqx_worry_lungcav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    1 = "(1) Rarely or Never"
    2 = "(2) Sometimes"
    3 = "(3) Often"
    4 = "(4) All the Time"
  ;
  ** FORMAT: sqx_zybanv **;
  ** FOR VARIABLE: sqx_zyban **;
  value sqx_zybanv
    .F = "(.F) No Form"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_cig_changev **;
  ** FOR VARIABLE: sqxbq_cig_change **;
  value sqxbq_cig_changev
    .A = "(.A) Ambiguous in either BQ or SQX"
    .F = "(.F) Not in SQX or Not in BQ"
    .I = "(.I) BQ & SQX Inconsistent"
    .M = "(.M) Missing Data in either BQ or SQX"
    0 = "(0) Never Smoked"
    2 = "(2) Former (BQ) who are Still Former"
    3 = "(3) New Quitter (Current Smoker at BQ)"
    4 = "(4) Relapsed (Former at BQ) now Current"
    5 = "(5) Current (was also Current at BQ)"
  ;
  ** FORMAT: sqx_actonelv **;
  ** FOR VARIABLE: sqx_actonel **;
  value sqx_actonelv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) Former"
    2 = "(2) Current"
    3 = "(3) Took, Unknown if Current"
  ;
  ** FORMAT: sqx_any_fmedv **;
  ** FOR VARIABLE: sqx_any_fmed **;
  value sqx_any_fmedv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) Former"
    2 = "(2) Current"
    3 = "(3) Took, Unknown if Current"
  ;
  ** FORMAT: sqx_bisphosv **;
  ** FOR VARIABLE: sqx_bisphos **;
  value sqx_bisphosv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) Former"
    2 = "(2) Current"
    3 = "(3) Took, Unknown if Current"
  ;
  ** FORMAT: sqx_bonivav **;
  ** FOR VARIABLE: sqx_boniva **;
  value sqx_bonivav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) Former"
    2 = "(2) Current"
    3 = "(3) Took, Unknown if Current"
  ;
  ** FORMAT: sqx_breastfedv **;
  ** FOR VARIABLE: sqx_breastfed **;
  value sqx_breastfedv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) None or Never Pregnant"
    1 = "(1) < 6 Months"
    2 = "(2) 6-11 Months"
    3 = "(3) 12-35 Months"
    4 = "(4) 36+ Months"
  ;
  ** FORMAT: sqx_brst_biopv **;
  ** FOR VARIABLE: sqx_brst_biop **;
  value sqx_brst_biopv
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqx_brst_biopav **;
  ** FOR VARIABLE: sqx_brst_biopa **;
  value sqx_brst_biopav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) < 30"
    2 = "(2) 30-39"
    3 = "(3) 40-49"
    4 = "(4) 50-59"
    5 = "(5) 60-69"
    6 = "(6) 70+"
  ;
  ** FORMAT: sqx_brst_biopnumv **;
  ** FOR VARIABLE: sqx_brst_biopnum **;
  value sqx_brst_biopnumv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) None"
    1 = "(1) 1"
    2 = "(2) 2"
    3 = "(3) 3 or More"
  ;
  ** FORMAT: sqx_didronelv **;
  ** FOR VARIABLE: sqx_didronel **;
  value sqx_didronelv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) Former"
    2 = "(2) Current"
    3 = "(3) Took, Unknown if Current"
  ;
  ** FORMAT: sqx_evistav **;
  ** FOR VARIABLE: sqx_evista **;
  value sqx_evistav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) Former"
    2 = "(2) Current"
    3 = "(3) Took, Unknown if Current"
  ;
  ** FORMAT: sqx_forteov **;
  ** FOR VARIABLE: sqx_forteo **;
  value sqx_forteov
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) Former"
    2 = "(2) Current"
    3 = "(3) Took, Unknown if Current"
  ;
  ** FORMAT: sqx_fosamaxv **;
  ** FOR VARIABLE: sqx_fosamax **;
  value sqx_fosamaxv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) Former"
    2 = "(2) Current"
    3 = "(3) Took, Unknown if Current"
  ;
  ** FORMAT: sqx_mammov **;
  ** FOR VARIABLE: sqx_mammo **;
  value sqx_mammov
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) < 1 Year Ago"
    2 = "(2) 1 Year Ago"
    3 = "(3) 2-3 Years Ago"
    4 = "(4) 4+ Years Ago"
  ;
  ** FORMAT: sqx_miacalcinv **;
  ** FOR VARIABLE: sqx_miacalcin **;
  value sqx_miacalcinv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) Former"
    2 = "(2) Current"
    3 = "(3) Took, Unknown if Current"
  ;
  ** FORMAT: sqx_nolvadexv **;
  ** FOR VARIABLE: sqx_nolvadex **;
  value sqx_nolvadexv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) Former"
    2 = "(2) Current"
    3 = "(3) Took, Unknown if Current"
  ;
  ** FORMAT: sqx_papsmearv **;
  ** FOR VARIABLE: sqx_papsmear **;
  value sqx_papsmearv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) < 1 Year Ago"
    2 = "(2) 1 Year Ago"
    3 = "(3) 2-3 Years Ago"
    4 = "(4) 4+ Years Ago"
  ;
  ** FORMAT: sqx_twinsv **;
  ** FOR VARIABLE: sqx_twins **;
  value sqx_twinsv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable - Never Pregnant"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_hrtv **;
  ** FOR VARIABLE: sqxbq_hrt **;
  value sqxbq_hrtv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_hrt2currv **;
  ** FOR VARIABLE: sqxbq_hrt2curr **;
  value sqxbq_hrt2currv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_hrt_agev **;
  ** FOR VARIABLE: sqxbq_hrt_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqxbq_hrt_agev
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqxbq_hrt_agestopv **;
  ** FOR VARIABLE: sqxbq_hrt_agestop **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqxbq_hrt_agestopv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqxbq_hrt_ageswitchv **;
  ** FOR VARIABLE: sqxbq_hrt_ageswitch **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqxbq_hrt_ageswitchv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqxbq_hrt_chngv **;
  ** FOR VARIABLE: sqxbq_hrt_chng **;
  value sqxbq_hrt_chngv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Still Taking"
    2 = "(2) Stopped"
    3 = "(3) Switched"
  ;
  ** FORMAT: sqxbq_hrt_statusv **;
  ** FOR VARIABLE: sqxbq_hrt_status **;
  value sqxbq_hrt_statusv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never took HRT"
    1 = "(1) Current HRT"
    2 = "(2) Former HRT"
    9 = "(9) Took HRT - Unknown if Current"
  ;
  ** FORMAT: sqxbq_hrt_type1v **;
  ** FOR VARIABLE: sqxbq_hrt_type1 **;
  value sqxbq_hrt_type1v
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Estrogen Only Pills"
    2 = "(2) Progesterone/Progestin Pills"
    3 = "(3) Estrogen+Progesterone Pills"
    4 = "(4) Estrogen Creams, etc."
    5 = "(5) Progesterone Creams, etc."
    6 = "(6) Estrogen+Progesterone Creams, etc."
    7 = "(7) Not Sure"
  ;
  ** FORMAT: sqxbq_hrt_type2v **;
  ** FOR VARIABLE: sqxbq_hrt_type2 **;
  value sqxbq_hrt_type2v
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Estrogen Only Pills"
    2 = "(2) Progesterone/Progestin Pills"
    3 = "(3) Estrogen+Progesterone Pills"
    4 = "(4) Estrogen Creams, etc."
    5 = "(5) Progesterone Creams, etc."
    6 = "(6) Estrogen+Progesterone Creams, etc."
    7 = "(7) Not Sure"
  ;
  ** FORMAT: sqxbq_hysterv **;
  ** FOR VARIABLE: sqxbq_hyster **;
  value sqxbq_hysterv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_hysterav **;
  ** FOR VARIABLE: sqxbq_hystera **;
  value sqxbq_hysterav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) < 40"
    2 = "(2) 40-44"
    3 = "(3) 45-49"
    4 = "(4) 50-54"
    5 = "(5) 55-59"
    6 = "(6) 60-69"
    7 = "(7) 70-79"
    8 = "(8) 80+"
  ;
  ** FORMAT: sqxbq_ovariesv **;
  ** FOR VARIABLE: sqxbq_ovaries **;
  value sqxbq_ovariesv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_ovariesav **;
  ** FOR VARIABLE: sqxbq_ovariesa **;
  value sqxbq_ovariesav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) < 40"
    2 = "(2) 40-44"
    3 = "(3) 45-49"
    4 = "(4) 50-54"
    5 = "(5) 55-59"
    6 = "(6) 60-69"
    7 = "(7) 70-79"
    8 = "(8) 80+"
  ;
  ** FORMAT: sqxbq_ovariesrv **;
  ** FOR VARIABLE: sqxbq_ovariesr **;
  value sqxbq_ovariesrv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Both Ovaries"
    2 = "(2) One Ovary"
    3 = "(3) Partial Removal of an Ovary"
    4 = "(4) Not Sure"
  ;
  ** FORMAT: sqxo_hrtv **;
  ** FOR VARIABLE: sqxo_hrt **;
  value sqxo_hrtv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxo_hrt2currv **;
  ** FOR VARIABLE: sqxo_hrt2curr **;
  value sqxo_hrt2currv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxo_hrt_agev **;
  ** FOR VARIABLE: sqxo_hrt_age **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqxo_hrt_agev
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqxo_hrt_agestopv **;
  ** FOR VARIABLE: sqxo_hrt_agestop **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqxo_hrt_agestopv
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqxo_hrt_ageswitchv **;
  ** FOR VARIABLE: sqxo_hrt_ageswitch **;
  ** CONTINUOUS NUMERIC VARIABLE (formats not searched/validated) **;
  value sqxo_hrt_ageswitchv
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    .R = "(.R) Out of Range"
  ;
  ** FORMAT: sqxo_hrt_chngv **;
  ** FOR VARIABLE: sqxo_hrt_chng **;
  value sqxo_hrt_chngv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Still Taking"
    2 = "(2) Stopped"
    3 = "(3) Switched"
  ;
  ** FORMAT: sqxo_hrt_statusv **;
  ** FOR VARIABLE: sqxo_hrt_status **;
  value sqxo_hrt_statusv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never took HRT"
    1 = "(1) Current HRT"
    2 = "(2) Former HRT"
    9 = "(9) Took HRT - Unknown if Current"
  ;
  ** FORMAT: sqxo_hrt_type1v **;
  ** FOR VARIABLE: sqxo_hrt_type1 **;
  value sqxo_hrt_type1v
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Estrogen Only Pills"
    2 = "(2) Progesterone/Progestin Pills"
    3 = "(3) Estrogen+Progesterone Pills"
    4 = "(4) Estrogen Creams, etc."
    5 = "(5) Progesterone Creams, etc."
    6 = "(6) Estrogen+Progesterone Creams, etc."
    7 = "(7) Not Sure"
  ;
  ** FORMAT: sqxo_hrt_type2v **;
  ** FOR VARIABLE: sqxo_hrt_type2 **;
  value sqxo_hrt_type2v
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Estrogen Only Pills"
    2 = "(2) Progesterone/Progestin Pills"
    3 = "(3) Estrogen+Progesterone Pills"
    4 = "(4) Estrogen Creams, etc."
    5 = "(5) Progesterone Creams, etc."
    6 = "(6) Estrogen+Progesterone Creams, etc."
    7 = "(7) Not Sure"
  ;
  ** FORMAT: sqxo_hysterv **;
  ** FOR VARIABLE: sqxo_hyster **;
  value sqxo_hysterv
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxo_hysterav **;
  ** FOR VARIABLE: sqxo_hystera **;
  value sqxo_hysterav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) < 40"
    2 = "(2) 40-44"
    3 = "(3) 45-49"
    4 = "(4) 50-54"
    5 = "(5) 55-59"
    6 = "(6) 60-69"
    7 = "(7) 70-79"
    8 = "(8) 80+"
  ;
  ** FORMAT: sqxo_ovariesv **;
  ** FOR VARIABLE: sqxo_ovaries **;
  value sqxo_ovariesv
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxo_ovariesav **;
  ** FOR VARIABLE: sqxo_ovariesa **;
  value sqxo_ovariesav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) < 40"
    2 = "(2) 40-44"
    3 = "(3) 45-49"
    4 = "(4) 50-54"
    5 = "(5) 55-59"
    6 = "(6) 60-69"
    7 = "(7) 70-79"
    8 = "(8) 80+"
  ;
  ** FORMAT: sqxo_ovariesrv **;
  ** FOR VARIABLE: sqxo_ovariesr **;
  value sqxo_ovariesrv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) N/A"
    1 = "(1) Both Ovaries"
    2 = "(2) One Ovary"
    3 = "(3) Partial Removal of an Ovary"
    4 = "(4) Not Sure"
  ;
  ** FORMAT: sqx_bald45v **;
  ** FOR VARIABLE: sqx_bald45 **;
  value sqx_bald45v
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) No Balding"
    1 = "(1) Mild Forehead Recession"
    2 = "(2) Mild Forehead Recession + Small Top Balding"
    3 = "(3) Forehead + Top Balding"
    4 = "(4) Hair only on Sides and Back"
  ;
  ** FORMAT: sqx_urinatev **;
  ** FOR VARIABLE: sqx_urinate **;
  value sqx_urinatev
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never"
    1 = "(1) Once"
    2 = "(2) 2 Times"
    3 = "(3) 3 Times"
    4 = "(4) 4 or More Times"
  ;
  ** FORMAT: sqx_urinateav **;
  ** FOR VARIABLE: sqx_urinatea **;
  value sqx_urinateav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) Never more than Once a Night"
    1 = "(1) < 30"
    2 = "(2) 30-39"
    3 = "(3) 40-49"
    4 = "(4) 50-59"
    5 = "(5) 60-69"
    6 = "(6) 70 +"
  ;
  ** FORMAT: sqxbq_bphv **;
  ** FOR VARIABLE: sqxbq_bph **;
  value sqxbq_bphv
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxbq_bphav **;
  ** FOR VARIABLE: sqxbq_bpha **;
  value sqxbq_bphav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) < 30"
    2 = "(2) 30-39"
    3 = "(3) 40-49"
    4 = "(4) 50-59"
    5 = "(5) 60-69"
    6 = "(6) 70 +"
  ;
  ** FORMAT: sqxo_bphv **;
  ** FOR VARIABLE: sqxo_bph **;
  value sqxo_bphv
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    0 = "(0) No"
    1 = "(1) Yes"
  ;
  ** FORMAT: sqxo_bphav **;
  ** FOR VARIABLE: sqxo_bpha **;
  value sqxo_bphav
    .A = "(.A) Ambiguous"
    .F = "(.F) No Form"
    .G = "(.G) Wrong Gender"
    .M = "(.M) Blank"
    .N = "(.N) Not Applicable"
    1 = "(1) < 30"
    2 = "(2) 30-39"
    3 = "(3) 40-49"
    4 = "(4) 50-59"
    5 = "(5) 60-69"
    6 = "(6) 70 +"
  ;
run;
