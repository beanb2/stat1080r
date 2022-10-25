library(tidyverse)

# Download the national-level reliability-targeted loads.
rt_load <- readr::read_csv("C:/Users/brennan/Box/National_Snow_Study_2020/final-tables/rt_loads_final_09012020_3_alt.csv")

rt_load_ut <- rt_load |>
  dplyr::filter(STATE == "UT") |>
  dplyr::mutate(ELEVATION = round(ELEVATION*3.28084),
                ECO = as.numeric(gsub(ECO3, pattern = "[[:punct:]].*$",
                                      replacement = "")),
                ECO = as.factor(ECO),
                LATITUDE = round(LATITUDE, 3),
                LONGITUDE = round(LONGITUDE, 3)) |>
  dplyr::select(NAME, LATITUDE, LONGITUDE, ELEVATION, ECO, RT_II) |>
  dplyr::rename(name = NAME, latitude = LATITUDE, longitude = LONGITUDE,
                elevation = ELEVATION, eco_region = ECO, load = RT_II)

usethis::use_data(rt_load_ut, overwrite = TRUE)

