# This script combines the dslabs information on mortality with the hawkes
# statistical dataset on emissions. Care is NOT taken to make sure that there
# is a one-to-one naming match between countries. Countries are only retained if
# they have non-missing measurements for the 52 year period available. Only
# about 25% of the original co2 observations are retained through all of this
# sub-setting! The lack of completeness in the dataset illustrates the constant
# re-alignment and re-negotation of boundaries in our world.
# Despite its setbacks, the list includes many major countries and is sufficient
# for illustration.
library(tidyverse)
library(dslabs)

co2_hawkes <- read_csv("https://www.hawkeslearning.com/Statistics/datasets/DIS_Datasets/CO2_Emissions.csv",
                       skip = 5)

# Fix the country names
country_names <- as.vector(unlist(co2_hawkes[1, ]))
country_names[1] <- "year"

# Remove special characters from country names.
country_names <- gsub(country_names, pattern = "[^[:alpha:] ]",
                      replacement = "")

colnames(co2_hawkes) <- country_names

co2_hawkes <- co2_hawkes[c(-1, -2), ]

co2_long <- pivot_longer(co2_hawkes, cols = !contains("year"),
                         names_to = "country", values_to = "emissions") %>%
  filter(!is.na(emissions)) %>%
  mutate(year = as.numeric(year))

data(gapminder)

gapminder <- gapminder |>
  mutate(country = gsub(country, pattern = "[^[:alpha:] ]",
                        replacement = ""))

co2_final <- inner_join(co2_long, gapminder, by = c("country", "year")) |>
  drop_na()

country_count <- co2_final |>
  group_by(country) |>
  count() |>
  ungroup() |>
  filter(n == max(n))

co2_final <- co2_final |>
  filter(country %in% country_count$country) |>
  mutate(emissions = as.numeric(emissions),
         gdp = as.numeric(gdp))

co2_hawkes <- co2_final

usethis::use_data(co2_hawkes)
