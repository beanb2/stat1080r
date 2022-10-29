# Read in toluca data
library(tidyverse)
toluca <- readr::read_table("http://www.cnachtsheim-text.csom.umn.edu/Kutner/Chapter%20%201%20Data%20Sets/CH01TA01.txt",
                            col_names = FALSE)
colnames(toluca) <- c("size", "hours")
toluca <- as.data.frame(toluca)

usethis::use_data(toluca, overwrite = TRUE)
