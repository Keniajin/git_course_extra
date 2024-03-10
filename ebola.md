

```r
#############################################
# Ebola case study
# Script for loading the data
# Your NAME here
# Date
#############################################
# Load packages -----------------------------------------------------------
pacman::p_load(
  rio,          # for importing data
  here,         # for relative file paths
  skimr,        # for reviewing the data
  janitor,      # for cleaning data
  epikit,       # for creating age categories
  tidyverse     # for data management and visualization
)
# Import data -------------------------------------------------------------
surv_raw <- import(here("data", "raw", "surveillance_linelist_20141201.csv"))

# Exploratory analysis ----------------------------------------------------
# (contents may vary)
# column names
names(surv_raw)
```

```
##  [1] "row_num"        "case_id"        "onset date"     "sex"           
##  [5] "age"            "age unit"       "hospital"       "wt (kg)"       
##  [9] "ht (cm)"        "fever"          "chills"         "cough"         
## [13] "aches"          "vomit"          "temp"           "bmi"           
## [17] "adm3_name_res"  "admin3pcod"     "adm3_name_det"  "lab_confirmed" 
## [21] "date of report" "lat"            "lon"            "epilink"
```

```r
# sex values
surv_raw %>%
  tabyl(sex)
```

```
##      sex   n   percent
##  Unknown  26 0.0379562
##        f 336 0.4905109
##        m 323 0.4715328
```

```r
# fever values
surv_raw %>%
  tabyl(fever)
```

```
##  fever   n    percent
##         33 0.04817518
##     no  96 0.14014599
##    yes 556 0.81167883
```

