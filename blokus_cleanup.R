## Hannah Bowley
## 04/20/2023
## Blokus analysis revistited a few years later now that I actually know how
##  to use R


# read in libraries -------------------------------------------------------
library(tidyverse)
library(haven)

# read in data sets from SPSS ---------------------------------------------

## read_sav(file location)



# dplyr to get only sex and mrt scores -------------------------------------

mrs_role_activity_sex_mrt <- mrs_role_activity %>% 
  select(Sex, Name, MRT_Scores) %>% 
  na.omit(cols = "MRT_scores")
  

# anova -------------------------------------------------------------------

aov(MRT_Scores ~ Sex, data = mrs_role_activity_sex_mrt)

## This anova wont run because there is missing data and the sample that is not 
## is all male 

