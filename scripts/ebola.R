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


# sex values
surv_raw %>%
  tabyl(sex)


# fever values
surv_raw %>%
  tabyl(fever)
