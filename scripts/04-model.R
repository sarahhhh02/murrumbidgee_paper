#### Preamble ####
# Purpose: Creating a model for annual homicides in Toronto
# Author: Sarah Lee
# Date: 15 March 2024 
# Contact: sarahhhh.lee@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
homicides_clean <- read_csv("data/analysis_data/homicides_clean.csv")

### Model data ####

first_model <-
  stan_glm(
    formula = year ~ homicide_type,
    data = homicides_clean,
    family = gaussian(),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 1168
  )

#### Save model ####
saveRDS(
  first_model,
  file = "models/first_model.rds"
)


