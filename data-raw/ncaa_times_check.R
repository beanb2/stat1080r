library(tidyverse)

test1 <- read.csv("data-raw/cc_results_2021.csv", header = FALSE) |>
  select(V2, V4, V6) |>
  mutate(minutes = as.numeric(str_extract(V6, pattern = "^[[:digit:]]+")),
         seconds = as.numeric(str_extract(V6, pattern = "[[:digit:]\\.]+$")),
         total = (minutes * 60) + seconds) |>
  select(V2, total)
test2 <- read.csv("data-raw/cc_results_2022.csv", header = FALSE) |>
  select(V2, V4, V6) |>
  mutate(minutes = as.numeric(str_extract(V6, pattern = "^[[:digit:]]+")),
         seconds = as.numeric(str_extract(V6, pattern = "[[:digit:]\\.]+$")),
         total = (minutes * 60) + seconds) |>
  select(V2, total)

check <- inner_join(test1, test2, by = "V2")
colnames(check) <- c("name", "final_2021", "final_2022")

ncaa_times <- check

usethis::use_data(ncaa_times, overwrite = TRUE)

# lm(total.y ~ total.x, data = check[check$total.x < 1300, ])
#
# cor(check$total.x, check$total.y)
#
# summary(check$total.x)
# summary(check$total.y)
#
# plot(check$total.x, check$total.y)
# abline(0, 1)
# abline(696.7, 0.4377)
# abline(591.7515, 0.5232)
#
