#### Preamble ####
# Purpose: Simulates voting survey
# Author: Krishiv Jain
# Date: 30/03/24
# Contact: krishiv.jain@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(555) #random seed

age_groups <- c("18-24", "25-34", "35-44", "45-54", "55-64", "65+")
gender <- c("Male", "Female", "Other")
income_group <- c("Low", "Middle", "High")
highest_education <- c("None", "High School", "Bachelor", "Advanced")
supports_party <- c("Yes", "No")


simulated_data <- 
  tibble(
  ID = seq(100), 
  Age_Group = sample(age_groups, size = 100, replace = TRUE),
  Gender = sample(gender, size = 100, replace = TRUE),
  Income_Group = sample(income_group, size = 100, replace = TRUE),
  Highest_Ed = sample(highest_education, size = 100, replace = TRUE),
  Supppors_Party = sample(supports_party, size = 100, replace = TRUE))