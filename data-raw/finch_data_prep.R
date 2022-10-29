finch_hawkes <- readr::read_csv("https://www.hawkeslearning.com/Statistics/datasets/DIS_Datasets/Finch_Data.csv")
finch_hawkes <- finch_hawkes[, 1:11]

new_colnames <- colnames(finch_hawkes)

new_colnames <- gsub(new_colnames, pattern = "[[:space:]]+", replacement = "_")
new_colnames <- gsub(new_colnames, pattern = "_\\([[:alpha:]]+\\)", replacement = "")

new_colnames <- tolower(new_colnames)

colnames(finch_hawkes) <- new_colnames

usethis::use_data(finch_hawkes, overwrite = TRUE)
