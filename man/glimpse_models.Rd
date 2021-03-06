% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glimpse_models.R
\name{glimpse_models}
\alias{glimpse_models}
\title{Glimpse function to quickly plot all available diagrams}
\usage{
glimpse_models(
  data = data,
  models = c("futuristic_male", "original_male", "original_female", "thermohuman_male",
    "thermohuman_female", "athletesr", "basic_female", "basic_male", "multi_view_male"),
  color = "dodgerblue",
  fill = "lightblue"
)
}
\arguments{
\item{data}{A dataframe. The dataframe with all the coordinates points. Must be equal to \code{data}.}

\item{models}{A vector. If not set it will return all the available diagrams in the dataset provided with the package.}

\item{color}{A color. The color of the polygons.}

\item{fill}{A color. The fill of the polygons.}
}
\value{
A ggplot object with the selected figures.
}
\description{
This function provides a visual glimpse of all the available diagrams.
}
\examples{
glimpse_models(data = data)

}
