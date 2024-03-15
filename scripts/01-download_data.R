#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Sarah Lee
# Date: 14 March 2024 [...UPDATE THIS...]
# Contact: sarahhhh.lee@mail.utoronto.ca
# License: MIT
# Any other information needed? 

#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
# [...UPDATE THIS...]

#### Download data ####
homicides_raw <- 
  list_package_resources("7d72bbbe-8adc-4b36-8ad1-5359f1c7a9cc") |>
  filter(name == "Homicides - 4326.csv") |>
  get_resource()

print(homicides_raw)

#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(
  x = homicides_raw, 
  file = "data/raw_data/homicides_raw.csv"
) 
