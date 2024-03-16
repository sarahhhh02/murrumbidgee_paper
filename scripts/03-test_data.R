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
homicides_clean1 <- read_csv("data/analysis_data/homicides_clean1.csv")
homicides_clean2 <- read_csv("data/analysis_data/homicides_clean2.csv")
homicides_clean3 <- read_csv("data/analysis_data/homicides_clean3.csv")

#### Test data ####
#Test coloumn class of variables; should all return TRUE
#homicides_clean1
is.numeric(homicides_clean1$year)
is.character(homicides_clean1$homicide_type)
is.character(homicides_clean1$day)

#homicides_clean2
is.numeric(homicides_clean2$year)
is.character(homicides_clean2$homicide_type)
is.numeric(homicides_clean2$count_type)

#homicides_clean3
is.numeric(homicides_clean3$year)
is.character(homicides_clean3$day)
is.numeric(homicides_clean3$count_day)

