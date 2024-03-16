#### Preamble ####
# Purpose: Simulates the annual homicide statistics in Toronto
# Author: Sarah Lee
# Date: 15 March 2024
# Contact: sarahhhh.lee@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Simulate data ####
set.seed(123)

#gather data for samples: year, month, and day with type of homicide
num_rows <- 888

simulated_data <- data.frame(
  year = sample (2004:2023, num_rows, replace = TRUE),
  month = sample(x = c("January", "Febuary", "March", "April", "May", "June", 
                                            "July", "August", "September", "October", "November",
                                            "December"), num_rows, replace = TRUE),
  day = sample(1:31, num_rows, replace = TRUE),
  homicide_type = sample (x = c("Stabbing", "Shooting", "Other"), num_rows, replace = TRUE)
)

print(simulated_data)




