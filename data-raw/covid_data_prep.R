url <- "https://srhdpeuwpubsa.blob.core.windows.net/whdh/COVID/"
url_case <- paste0(url, "WHO-COVID-19-global-table-data.csv")

covid_case <- read_csv(url_case) |>
  select(name = Name, region = `WHO Region`,
         case_total = `Cases - cumulative total`,
         case_pop = `Cases - cumulative total per 100000 population`,
         death_total = `Deaths - cumulative total`,
         death_pop = `Deaths - cumulative total per 100000 population`)

use_data(covid_case, overwrite = FALSE)

url <- "https://srhdpeuwpubsa.blob.core.windows.net/whdh/COVID/"
url_death <- paste0(url, "WHO-COVID-19-global-hosp-icu-data.csv")

covid_hos <- read_csv(url_death) |>
  select(date = Date_reported,
         country = Country,
         region = WHO_region,
         new_hos = Covid_new_hospitalizations_last_7days)

use_data(covid_hos, overwrite = FALSE)
