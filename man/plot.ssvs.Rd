% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plot.ssvs}
\alias{plot.ssvs}
\title{Plot results of an SSVS model}
\usage{
\method{plot}{ssvs}(x, threshold = 0.5, legend = TRUE, title = NULL, color = TRUE, ...)
}
\arguments{
\item{x}{An ssvs result object obtained from \code{\link[=ssvs]{ssvs()}}}

\item{threshold}{An MIP threshold to show on the plot, must be between 0-1.
If \code{NULL}, no threshold is used.}

\item{legend}{If \code{TRUE}, show a legend for the shapes based on the threshold.
Ignored if \code{threshold = NULL}.}

\item{title}{The title of the plot. Set to \code{NULL} to use a default title.}

\item{color}{If \code{TRUE}, the data points will be colored based on the threshold.}

\item{...}{Ignored}
}
\value{
Creates a plot of the inclusion probabilities by variable
}
\description{
Plot results of an SSVS model
}
\examples{
\donttest{
outcome <- "qsec"
predictors <- c("cyl", "disp", "hp", "drat", "wt", "vs", "am", "gear", "carb", "mpg")
results <- ssvs(x = predictors, y = outcome, data = mtcars, progress = FALSE)
plot(results)
}
}
