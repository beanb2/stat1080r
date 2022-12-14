% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_descriptions.R
\docType{data}
\name{election_survey_2016}
\alias{election_survey_2016}
\title{Post election survey of 7606 voters in the 2016 US Presidential Election.}
\format{
A data.frame with 7606 rows and 6 columns.
\describe{
  \item{id}{voter id}
  \item{weight}{a weight based on the estimated representative-ness of the
  voter in relation to the overall population}
  \item{vote_method}{either by mail or in person}
  \item{vote}{either Clinton, Trump, or "Other" for all other candidates}
  \item{income}{voter's self-identified income bracket}
  \item{news}{voter's self-reported interest in the daily news}
}
}
\source{
\url{https://www.kaggle.com/datasets/democracy-fund/2016-voter-survey?resource=download}
}
\usage{
election_survey_2016
}
\description{
Post election survey of 7606 voters in the 2016 US Presidential Election.
}
\keyword{datasets}
