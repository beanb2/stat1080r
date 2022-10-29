crime_hawkes <- readr::read_csv("https://www.hawkeslearning.com/Statistics/datasets/DIS_Datasets/High_School_Completion_and_Crime_Rate.csv",
                                skip = 1)

colnames(crime_hawkes) <- c("state", "completion", "crime", "violent",
                            "property")

crime_hawkes <- as.data.frame(crime_hawkes)
usethis::use_data(crime_hawkes, overwrite = TRUE)

