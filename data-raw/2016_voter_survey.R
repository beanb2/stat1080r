library(tidyverse)
# Data obtained from:
# - https://www.kaggle.com/datasets/democracy-fund/2016-voter-survey?resource=download

election_survey_2016 <- readr::read_csv("C:/Users/brennan/Downloads/archive/VOTER_Survey_December16_Release1.csv")


election_survey_2016 <- election_survey_2016 |>
  select(case_identifier, weight, votemeth16_2016,
         presvote16post_2016, faminc_2016, newsint2_baseline) |>
  filter(!is.na(presvote16post_2016)) |>
  mutate(vote = case_when(presvote16post_2016 == "Hillary Clinton" ~ "Clinton",
                          presvote16post_2016 == "Donald Trump" ~ "Trump",
                          TRUE ~ "Other"),
         vote_method = case_when(votemeth16_2016 == "By mail" ~ "mail",
                                 TRUE ~ "person"),
         news = case_when(newsint2_baseline == "Most of the time" ~ "high",
                         TRUE ~ "other")) |>
  select(id = case_identifier, weight,
         vote_method, vote, income = faminc_2016,
         news)

usethis::use_data(election_survey_2016, overwrite = TRUE)

