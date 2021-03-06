% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vpi.R
\name{summary.vpi}
\alias{summary.vpi}
\alias{is.vpi}
\title{Inspect vertically integrated profiles (\code{vpi})}
\usage{
\method{summary}{vpi}(object, ...)

is.vpi(x)
}
\arguments{
\item{object}{A \code{vpi} object.}

\item{...}{Additional arguments affecting the summary produced.}

\item{x}{A \code{vpi} object.}
}
\value{
For \code{\link[=is.vpi]{is.vpi()}}: \code{TRUE} for an object of class \code{vpi}, otherwise
\code{FALSE}.
}
\description{
R base functions for inspecting vertically integrated profiles of biological targets
(\code{vp}) object.
}
\details{
A vpi object is a specially classed data frame generated by function \link{integrate_profile} with the following
quantities:
\describe{
\item{\code{datetime}}{POSIXct date of each profile in UTC}
\item{\code{vid}}{Vertically Integrated Density in individuals/km^2.
\code{vid} is a surface density, whereas \code{dens} in \code{vp}
objects is a volume density.}
\item{\code{vir}}{Vertically Integrated Reflectivity in cm^2/km^2}
\item{\code{mtr}}{Migration Traffic Rate in individuals/km/h}
\item{\code{rtr}}{Reflectivity Traffic Rate in cm^2/km/h}
\item{\code{mt}}{Migration Traffic in individuals/km, cumulated from
the start of the time series up to \code{datetime}}
\item{\code{rt}}{Reflectivity Traffic in cm^2/km, cumulated from
the start of the time series up to \code{datetime}}
\item{\code{ff}}{Horizontal ground speed in m/s}
\item{\code{dd}}{Horizontal ground speed direction in degrees}
\item{\code{u}}{Ground speed component west to east in m/s}
\item{\code{v}}{Ground speed component south to north in m/s}
\item{\code{height}}{Mean flight height (height weighted by eta) in m above sea level}
}
Class vpi inherits from class data.frame
}
\examples{
# Load the example vertical profile time series and integrate to a vpi
vpi <- integrate_profile(example_vpts)

# Verify that it is an object of class vpi
is.vpi(vpi)

# Get summary info
summary(vpi)
}
\seealso{
\itemize{
\item \code{\link[=integrate_profile]{integrate_profile()}}
\item \code{\link[=plot.vpi]{plot.vpi()}}
}
}
