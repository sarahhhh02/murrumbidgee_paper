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

#Filter out the columns
homicides_raw <- 
  homicides_raw |> 
  select(OCC_YEAR, HOMICIDE_TYPE, OCC_DOW)

#Change colum names
homicides_raw <- 
  homicides_raw |> 
  rename(year = OCC_YEAR, day = OCC_DOW) 

#Clean column names
homicides_raw <- clean_names(homicides_raw)

#Combining data into year, type of homicide and total homicides by type and year
combine_by_type <- homicides_raw %>%
  group_by(year, homicide_type) %>%
  summarize(count_type = n())

#Combining data into year, day and total homicides year and day
combine_by_day <- homicides_raw %>%
  group_by(year, day) %>%
  summarize(count_day = n())

#### Save data ####
write_csv((x = homicides_raw), file = "data/analysis_data/homicides_clean1.csv")
write_csv(x = combine_by_type, file = "data/analysis_data/homicides_clean2.csv")
write_csv(x = combine_by_day, file = "data/analysis_data/homicides_clean3.csv")

