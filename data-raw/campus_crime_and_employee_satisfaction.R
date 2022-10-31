library(tidyverse)

campus_crime <- readr::read_csv("https://www.hawkeslearning.com/Statistics/datasets/DIS_Datasets/Campus_Crime.csv",
                                skip = 1)

campus_crime <- campus_crime[1:20, 1:4]
colnames(campus_crime) <- c("crimes", "police", "enrolled", "private")

campus_crime_hawkes <- as.data.frame(campus_crime)
usethis::use_data(campus_crime_hawkes, overwrite = TRUE)


satisfy_hawkes <- readr::read_csv("https://www.hawkeslearning.com/Statistics/datasets/DIS_Datasets/Employee_Satisfaction.csv",
                                  skip = 3)

satisfy_hawkes <- as.data.frame(satisfy_hawkes[, 1:12])

usethis::use_data(satisfy_hawkes, overwrite = TRUE)
