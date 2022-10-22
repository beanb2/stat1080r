patient <- read.csv("https://www.hawkeslearning.com/Statistics/datasets/BEG3_Datasets/Patient_Data.csv")
colnames(patient) <- c("id", "gender", "marital_status", "age", "weight",
                       "cholesterol", "blood_pressure")

# Create categories of age.
patient_hawkes <- patient |>
  dplyr::mutate(cohort = dplyr::case_when(age < 20 ~ "teens",
                                          age >= 20 & age < 30 ~ "20s",
                                          age >= 30 & age < 40 ~ "30s",
                                          age >= 40 & age < 50 ~ "40s",
                                          age >= 50 & age < 60 ~ "50s",
                                          age >= 60 ~ "60+"),)

usethis::use_data(patient_hawkes, overwrite = TRUE)
