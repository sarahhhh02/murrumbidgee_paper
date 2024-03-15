#### Preamble ####
# Purpose: Cleans the raw data on homicides recorded by Toronto Police
# Author: Sarah Lee
# Date: 14 March 2024
# Contact: sarahhhh.lee@mail.utoronto.ca
# License: MIT
# Any other information needed? Need the raw data "homicides_raw_data"

#### Workspace setup ####
#install.packages("janitor")
library(tidyverse)
library(janitor)

#### Clean data ####
homicides_raw <- read_csv("data/raw_data/homicides_raw.csv", show_col_types = FALSE)

homicides_raw <- 
  homicides_raw |> 
  select(OCC_YEAR, OCC_MONTH, OCC_DAY, OCC_DOW, HOMICIDE_TYPE, HOOD_158, HOOD_140)
homicides_raw <- 
  homicides_raw |> 
  rename(year = OCC_YEAR, month = OCC_MONTH, day = OCC_DAY, day_of_week = OCC_DOW) 
homicides_raw <- clean_names(homicides_raw)

#### Save data ####
write_csv(x = homicides_raw, file = "data/analysis_data/homicides_clean.csv")

