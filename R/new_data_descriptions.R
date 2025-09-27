#' University Statistics
#'
#' A subset of data from the U.S. Department of Education's College Score
#'   card. Contains information about institutions across the US. Institutions
#'   are only retained if they offer 4-year programs, have more than 2k
#'   students, have an endowment larger than 10 million dollars, and have
#'   non-missing information for all the variables included in the dataset. The
#'   data represent the most recent statistics that were compiled in May
#'   of 2025.
#'
#' @format
#' A data frame with 831 rows and 10 columns.
#' \describe{
#'   \item{name}{Name of the college or university}
#'   \item{endowment_begin}{Size of the school endowment at the beginning of
#'      the fiscal year, in billions of dollars}
#'   \item{endowment_end}{Size of the school endowment at the end of
#'      the fiscal year, in billions of dollars}
#'   \item{enrollment}{Number of enrolled undergraduates}
#'   \item{enrollment_men_prop}{Proportion of male undergraduates}
#'   \item{enrollment_women_prop}{Proportion of female undergraduates}
#'   \item{public}{Is the school a public institution?}
#'   \item{attendance_cost}{Average cost of attendance, in thousands of dollars}
#'   \item{income_median}{Median family income, in thousands of dollars}
#'   \item{earnings}{Median earnings 10 years after enrollment,
#'     in thousands of dollars}
#' }
#' @source <https://collegescorecard.ed.gov/data/>
"colleges"

#' Covid Case Data - Country Level Aggregates
#'
#' A snapshot in time of COVID case level aggregates by country, as prepared
#'   by the World Health Organization.
#'
#' @format
#' A data frame with 241 rows and 6 columns.
#'
#' \describe{
#'   \item{name}{Country name}
#'   \item{region}{World Health Organization region}
#'   \item{case_total}{Cumulative number of cases}
#'   \item{case_pop}{Cumulative number of cases per 100,000 people}
#'   \item{death_total}{Cumulative number of deaths}
#'   \item{death_pop}{Cumulative number of deaths per 100,000 people}
#' }
#'
#' @source <https://data.who.int/dashboards/covid19/>
"covid_case"

#' Covid Case Data - Country Level Time Series Data
#'
#' Weekly covid case statistics by country, as reported by the World Health
#'   Organization.
#'
#' @format
#' A data frame with 241 rows and 6 columns.
#'
#' \describe{
#'   \item{date}{Date of report, in yyyy-mm-dd format}
#'   \item{country}{Country name}
#'   \item{region}{World Health Organization region}
#'   \item{new_hos}{Number of new hospitalizations reported that week.}
#' }
#'
#' @source <https://data.who.int/dashboards/covid19/>
"covid_hos"
