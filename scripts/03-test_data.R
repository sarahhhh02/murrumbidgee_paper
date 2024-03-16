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
homicides_clean2 <- read_csv("data/analysis_data/homicides_clean2.csv")

#### Test data ####
#Test coloumn class of variables; should all return TRUE
is.numeric(homicides_clean2$year)
is.character(homicides_clean2$homicide_type)
is.numeric(homicides_clean2$count)

