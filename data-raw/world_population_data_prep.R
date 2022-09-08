library(tidyverse)

world_population <- readr::read_csv("C:/Users/brennan/Box/Teaching/Data Bank/WPP2022_TotalPopulationBySex.csv")

# Subset to only include data by country.
world_pop_2021 <- world_population %>%
  dplyr::filter(LocTypeName == "Country/Area",
                Time == 2021) %>%
  dplyr::select(Country = Location, PopMale, PopFemale,
                PopTotal, PopDensity) %>%
  dplyr::mutate(PopMale = PopMale * 1000,
                PopFemale = PopFemale * 1000,
                PopTotal = PopTotal * 1000)


usethis::use_data(world_pop_2021, overwrite = TRUE)
