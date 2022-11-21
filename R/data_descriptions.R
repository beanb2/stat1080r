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
#' @source \url{https://www.hawkeslearning.com/Statistics/beg3/datasets.html}
#' @source \url{https://www.kaggle.com/jeandsantos/breakfast-cereals-data-analysis-and-clustering}
"cereal"

#' Nutrition Information for Cereals
#'
#' A dataset that provides nutritional information regarding cereals, but
#'   includes a nefarious twist.
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
#' @source \url{https://www.hawkeslearning.com/Statistics/beg3/datasets.html}
#' @source \url{https://www.kaggle.com/jeandsantos/breakfast-cereals-data-analysis-and-clustering}
"cereal_infected"


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
#' @source \url{https://doi.org/10.26077/200k-pr86}
"rt_load_ut"

#' Medical statistics for a sample of 100 patients from a hospital.
#'
#' @format A data.frame with 100 rows and 8 columns
#' \describe{
#'   \item{id}{patient id number}
#'   \item{gender}{patient gender (dichotomous)}
#'   \item{marital_status}{one of married (M), widowed (W), divorced (D) or
#'   single (S)}
#'   \item{age}{patient age}
#'   \item{weight}{patient weight in pounds}
#'   \item{cholesterol}{patient total cholesterol}
#'   \item{blood_pressure}{patient systolic blood pressure in mmHg}
#'   \item{cohort}{patients separated by decade of age}
#' }
#'
#' @source \url{https://www.hawkeslearning.com/Statistics/beg3/dataset-descriptions.html#decreases-in-cholesterol-levels}
"patient_hawkes"

#' Post election survey of 7606 voters in the 2016 US Presidential Election.
#'
#' @format A data.frame with 7606 rows and 6 columns.
#' \describe{
#'   \item{id}{voter id}
#'   \item{weight}{a weight based on the estimated representative-ness of the
#'   voter in relation to the overall population}
#'   \item{vote_method}{either by mail or in person}
#'   \item{vote}{either Clinton, Trump, or "Other" for all other candidates}
#'   \item{income}{voter's self-identified income bracket}
#'   \item{news}{voter's self-reported interest in the daily news}
#' }
#'
#' @source \url{https://www.kaggle.com/datasets/democracy-fund/2016-voter-survey?resource=download}
"election_survey_2016"

#' A sample of data collected on Darwin's finches on Daphe Major island.
#'
#' @format A data.frame with 100 rows and 11 columns.
#' \describe{
#'   \item{band}{Refers to an individual's identity, more specifically, the
#'   number on a metal leg band it was given}
#'   \item{species}{Species name}
#'   \item{sex}{Male, female, or unknown. The reason for the "unknown" category
#'   is that males start their lives looking like females. After one or more
#'   years they molt into a plumage with some black feathering that indicates
#'   they are males}
#'   \item{first_adult_year}{The year after the individual hatched from an egg}
#'   \item{last_year}{The last year of that individual's life}
#'   \item{weight}{Weight, in grams}
#'   \item{wing}{Wing length, in millimeters}
#'   \item{tarsus}{Tarsus length (part of leg), in millimeters}
#'   \item{beak_length}{Beak length, in millimeters}
#'   \item{beak_depth}{Beak depth, in millimeters}
#'   \item{beak_width}{Beak width, in millimeters}
#' }
#'
#' @source \url{https://www.hawkeslearning.com/Statistics/dataset-descriptions.html#finch-data}
"finch_hawkes"

#' Comparison of lot size vs work hours at the Toluca Company
#'
#' @format A data.frame with 25 rows and 2 columns
#' \describe{
#'   \item{size}{lot size (no units originally provided, but
#'   assumed to be thousands of square feet)}
#'   \item{hours}{average hours it takes to make single part}
#' }
#'
#' @source \url{http://www.cnachtsheim-text.csom.umn.edu/Kutner/Chapter\%20\%201\%20Data\%20Sets/CH01PR20.txt}
"toluca"

#' Data regarding high school completion and crime rates across U.S. states
#'   in 2014.
#'
#' @format A data.frame with 50 rows and 5 columns.
#' \describe{
#'   \item{state}{The 4-year ACGR is the number of students who graduate in 4
#'   years with a regular high school diploma divided by the number of students
#'   who form the adjusted cohort for the graduating class.” This number has
#'   been rounded to the nearest whole number.}
#'   \item{crime}{Rate of violent and property crimes per
#'   100,000 people}
#'   \item{crime}{Rate of violent crimes (murder, rape, robbery,
#'   aggravated assault) per 100,000 people}
#'   \item{property}{Rate of property crimes per 100,000}
#' }
#'
#' @source \url{https://www.hawkeslearning.com/Statistics/dataset-descriptions.html#high-school-completion-and-crime-rate}
"crime_hawkes"

#' Data regarding campus crime.
#'
#' @format A data.frame with 20 rows and 4 columns.
#' \describe{
#'   \item{crimes}{The number of crimes as applicable to the school}
#'   \item{police}{Number of police officers at the school}
#'   \item{enrolled}{Total number of students enrolled at the school}
#'   \item{private}{Private school (1), and others (0).}
#' }
#'
#' @source \url{https://www.hawkeslearning.com/Statistics/dataset-descriptions.html#campus-crime}
"campus_crime_hawkes"

#' Data regarding campus crime.
#'
#' @format A data.frame with 15,000 rows and 12 columns.
#' \describe{
#'   \item{employee_id}{The ID number associated with the individual employee}
#'   \item{satisfaction_level}{How satisfied the employee is in their position
#'   (scale of 0 to 1)}
#'   \item{last_evaluation_score}{How management rated employee performance
#'   during the last evaluation (scale of 0 to 1)}
#'   \item{number_of_projects}{The number of projects an employee is currently
#'   working on}
#'   \item{average_monthly_hours}{he average number of hours the employee works
#'   in a month}
#'   \item{years_spent_at_company}{The number of years the employee has worked
#'   at the company}
#'   \item{work_accident}{A binary variable that indicates whether the employee
#'   experienced an accident at work}
#'   \item{left_company}{A binary variable that indicates whether an employee
#'   left the company}
#'   \item{promotion_in_last_5_years}{A binary variable that indicates whether
#'   an employee received a promotion in the last 5 years}
#'   \item{department}{The department that the employee works in}
#'   \item{salary}{The level of the employee’ s salary(low, medium, high)}
#'   \item{salary_range}{The dollar range for the salary levels}
#' }
#'
#' @source \url{https://www.hawkeslearning.com/Statistics/dataset-descriptions.html#employee-satisfaction}
#' @source \url{https://www.kaggle.com/ludobenistant/hr-analytics}
"satisfy_hawkes"

#' Mount Pleasant Real estate.
#'
#' Information about properties for sale in three subdivisions of Mount
#'   Pleasant, South Carolina, in the year 2017.
#'
#' @format A data.frame with 245 rows and 24 columns.
#' \describe{
#'   \item{id}{Property ID number}
#'   \item{price}{Asking price in dollars}
#'   \item{duplex}{Is the property a duplex?}
#'   \item{bedrooms}{Number of bedrooms}
#'   \item{baths_total}{baths_full + baths_half}
#'   \item{baths_full}{Number of full bathrooms}
#'   \item{baths_half}{Number of half bathrooms}
#'   \item{stories}{Number of stories}
#'   \item{Subdivision}{Name of the subdivision the property is
#'   located in}
#'   \item{sqrt}{Estimated floor area inside the house}
#'   \item{year}{The year the house was constructed}
#'   \item{acres}{The size of the lot in acres}
#'   \item{new}{Has the house been lived in previously?}
#'   \item{style}{The style of the house}
#'   \item{garage}{Number of covered parking spots on the property}
#'   \item{misc}{Miscellaneous exterior features (text string)}
#'   \item{pool}{Does the home have a private pool?}
#'   \item{dock}{Does the home have a private dock?}
#'   \item{fence}{Does the home have a fenced yard?}
#'   \item{porch}{Does the home have a screened porch?}
#'   \item{Amenities}{Text screen of other amenities associated with the
#'   property}
#'   \item{golf_course}{Is the home located on a golf course?}
#'   \item{fireplace}{Does the home have a fireplace?}
#'   \item{num_fireplace}{Number of fireplaces}
#' }
#'
#' @source \url{https://www.hawkeslearning.com/Statistics/dataset-descriptions.html#mount-pleasant-real-estate}
"housing_hawkes"
