#' Nutrition Information for Cereals
#'
#' A dataset that provides nutritional information regarding cereals.
#'
#' @format A data.frame with 77 rows and 15 variables.
#' \describe{
#'   \item{Shelf}{One of Top, Bottom, or Middle, describing the position of the
#'   cereal on the shelf at the grocery store.}
#'   \item{Name}{The name of the cereal.}
#'   \item{Manufacturer}{The manufacturer of the cereal, including American home
#'   food products (A), General Mills (G), Kelloggs (K), Nabisco (N), Post
#'   Brands (P), Quaker Oats (Q), and Ralston (R).}
#'   \item{Type}{One of cold (C) or hot (H).}
#'   \item{Calories}{The calories in one serving.}
#'   \item{Protein}{The number of grams of protein in one serving.}
#'   \item{Fat}{The number of grams of fat in one serving.}
#'   \item{Sodium}{The number of milligrams (mg) of sodium in one serving.}
#'   \item{Fiber}{The number of grams of fiber in one serving.}
#'   \item{Carbohydrates}{The number of grams of carbohydrates in one serving.}
#'   \item{Sugars}{The numebr of grams of sugar in one serving.}
#'   \item{Vitamins}{vitamins and minerals - 0, 25, or 100, indicating the
#'   typical percentage of FDA}
#'   \item{Weight}{The weight of one serving size of cereal.}
#'   \item{Cup}{number of cups in one serving}
#' }
#'
#'
#' @source \url{https://www.hawkeslearning.com/Statistics/beg3/datasets.html}
#' @source \url{https://www.kaggle.com/jeandsantos/breakfast-cereals-data-analysis-and-clustering}
"cereal"


#' Miles Per Gallon
#'
#' Data on vehicle fuel economy for model years 1984—2019
#'
#' @format A data.frame with 38,693 rows and 11 columns.
#' \describe{
#'   \item{city}{city miles per gallon}
#'   \item{cylinders}{number of cylinders in the vehicle engine}
#'   \item{displ}{engine displacement (liters)}
#'   \item{drive}{drive axle type (front-wheel, four-wheel, etc.)}
#'   \item{fuelType}{type of fuel (regular, premium, diesel, etc.)}
#'   \item{highway}{highway miles per gallon}
#'   \item{make}{manufacturer}
#'   \item{model}{model name}
#'   \item{trans}{type of transmission}
#'   \item{VClass}{vehicle size class}
#'   \item{year}{model year}
#' }
#'
#'
#' @source \url{https://www.seattlecentral.edu/qelp/sets/057/057.html}
#' @source \url{https://www.hawkeslearning.com/Statistics/dataset-descriptions.html#miles-per-gallon}
"mpg_hawkes"

#' Utah Design Snow Loads
#'
#' Reliability-targeted design snow loads for the state of Utah.
#'   A design snow load is the pressure
#'   exerted by accumulated snow that a building needs to be able to withstand
#'   in order to prevent collapse.
#'
#' @format A data.frame with 257 rows and 6 columns
#' \describe{
#'   \item{name}{name of the weather station at which the measurements
#'   were recorded}
#'   \item{latitude}{decimal degrees latitude (geographic location)}
#'   \item{longitude}{decimal degrees longitude}
#'   \item{elevation}{altitude of the station, measured in feet}
#'   \item{eco_region}{the level I ecological region as defined by the
#'   U.S. Environmental Protection Agency}
#'   \item{load}{the design snow load, measured in pounds per square foot (psf)}
#' }
#'
#'
#' @source \url{https://doi.org/10.26077/200k-pr86}
"rt_load_ut"

