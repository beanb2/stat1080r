library(tidyverse)

housing <- readr::read_csv("https://www.hawkeslearning.com/Statistics/datasets/DIS_Datasets/Mount_Pleasant_Real_Estate_Data.csv")

colnames(housing) <- c("id", "price", "duplex", "bedrooms",
                       "baths_total", "baths_full", "baths_half",
                       "stories", "subdivision", "sqft", "year",
                       "acres", "new", "style", "garage",
                       "misc", "pool", "dock", "fence",
                       "porch", "amenities", "golf_course",
                       "fireplace", "num_fireplace")

housing2 <- housing |>
  mutate(price = gsub(price, pattern = "[$,]+", replacement = ""),
         price = as.numeric(price),
         duplex = if_else(duplex == "Yes", TRUE, FALSE),
         new = if_else(new == "Yes", TRUE, FALSE),
         pool = if_else(pool == "Yes", TRUE, FALSE),
         dock = if_else(dock == "Yes", TRUE, FALSE),
         fence = if_else(fence == "Yes", TRUE, FALSE),
         porch = if_else(porch == "Yes", TRUE, FALSE),
         golf_course = if_else(golf_course == "Yes", TRUE, FALSE),
         fireplace = if_else(fireplace == "Yes", TRUE, FALSE))

housing_hawkes <- housing2

usethis::use_data(housing_hawkes, overwrite = TRUE)

