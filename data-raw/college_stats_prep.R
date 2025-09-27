library(tidyverse)

# https://collegescorecard.ed.gov/data
# Data downloaded on 9-27-2025.
# Using Version: 5-19-2025

colleges_raw <- read_csv("C:/Users/A01260816/Downloads/College_Scorecard_Raw_Data_05192025/College_Scorecard_Raw_Data_05192025/Most-Recent-Cohorts-Institution.csv")

colleges <- colleges_raw |>
  select(INSTNM, ENDOWBEGIN, ENDOWEND, ICLEVEL, UGDS, UGDS_MEN, UGDS_WOMEN,
         NPT4_PUB, NPT4_PRIV, MD_FAMINC,
         COSTT4_A, COSTT4_P, D150_4, MD_EARN_WNE_INC1_P11,
         MD_EARN_WNE_INC2_P11, MD_EARN_WNE_INC3_P11,
         MD_EARN_WNE_P10)

# Create a new variable that specifies Title IV institutions as public
# or private and remove all other institutions.
colleges <- colleges |>
  filter(!is.na(NPT4_PUB) | !is.na(NPT4_PRIV),
         !is.na(ENDOWBEGIN),
         ICLEVEL == 1, UGDS > 2000) |>
  mutate(public = !is.na(NPT4_PUB),
         attendance_cost = round(if_else(is.na(NPT4_PUB), NPT4_PRIV, NPT4_PUB) / 1000, 1),
         earnings = round(MD_EARN_WNE_P10 / 1000, 1),
         income_median = round(as.numeric(MD_FAMINC) / 1000, 1),
         endowment_begin = round(ENDOWBEGIN / 1e9, 2),
         endowment_end = round(ENDOWEND / 1e9, 2)) |>
  select(name = INSTNM,
         endowment_begin,
         endowment_end,
         enrollment = UGDS,
         enrollment_men_prop = UGDS_MEN,
         enrollment_women_prop = UGDS_WOMEN,
         public,
         attendance_cost,
         income_median,
         earnings) |>
  filter(endowment_begin > 0 & endowment_end > 0) |>
  drop_na()

use_data(colleges, overwrite = TRUE)
