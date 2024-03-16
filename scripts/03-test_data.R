#### Preamble ####
# Purpose: Tests data on Annual Toronto Homicides cleaned data
# Author: Sarah Lee
# Date: 15 March 2024 
# Contact: sarahhhh.lee@mail.utoronto.ca
# License: MIT
# Any other information needed? Data from data/analysis_data/homicides_clean.csv


#### Workspace setup ####
library(tidyverse)

#Load package
homicides_clean <- read_csv("data/analysis_data/homicides_clean.csv")

#### Test data ####
#Test coloumn class of variables; should all return TRUE
is.numeric(homicides_clean$year)
is.character(homicides_clean$month)
is.numeric(homicides_clean$day)
is.character(homicides_clean$day_of_week)
is.character(homicides_clean$homicide_type)

