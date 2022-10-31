cereal <- data.table::fread("https://www.hawkeslearning.com/Statistics/datasets/DIS_Datasets/Cereal_Data.csv")

cereal <- as.data.frame(cereal)
colnames(cereal)[14:15] <- c("Weight", "Cups")
usethis::use_data(cereal, overwrite = TRUE)

cereal_infected <- cereal
cereal_infected$Sugars[27] <- cereal_infected$Sugars[27]*10

usethis::use_data(cereal_infected, overwrite = TRUE)
