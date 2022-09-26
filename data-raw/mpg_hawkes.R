library(tidyverse)

mpg_hawkes <- read_csv("https://www.hawkeslearning.com/Statistics/datasets/DIS_Datasets/Miles_Per_Gallon.csv")

usethis::use_data(mpg_hawkes, overwrite = TRUE)
