#' Presidential inaugural addresses
#'
#' This is a web scraped dataset of all presidential inauguration speeches. It
#'   does not include second or third inaugural addresses, nor does it include
#'   presidential addresses when the vice president replaced a dead president
#'   mid term.
#'
#' @format A data.frame with 53 rows rows and 2 variables.
#' \describe{
#'     \item{year}{The year in which the inaugural address was given.}
#'     \item{speech}{The full text of the inaugural speech as a single
#'     character strring.}
#'
#' }
#'
#' @source \url{https://www.presidency.ucsb.edu/documents/app-categories/spoken-addresses-and-remarks/presidential/inaugural-addresses}
"pres_speech_df"

#' Utah SNOTEL station SWE measurements.
#'
#' This is data obtained from the National Water and Climate Center report
#'   generator. It contains snow water equivalent (SWE) measurements from two
#'   snowpack telemetery (SNOTEL) stations in Utah. One at Tony Grove, Lake
#'   up Logan Canyon, and another at Ben Lomond Peak, east of Ogden.
#'
#' @format A data.frame with 32,972 rows rows and 5 variables.
#' \describe{
#'     \item{date}{The date of the measurement in y-m-d format.}
#'     \item{id}{The SNOTEL measurement ID.}
#'     \item{name}{The SNOTEL station name.}
#'     \item{swe}{The measured snow water equiavlent, in 10ths of millimeters.}
#'     \item{qc}{An NWCC quality control flag where "S" stands for suspect
#'     measurements.}
#' }
#'
#' @source \url{https://wcc.sc.egov.usda.gov/reportGenerator/}
"swe"
