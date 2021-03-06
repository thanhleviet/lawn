% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quantile.R
\name{lawn_quantile}
\alias{lawn_quantile}
\title{Calculate quantiles}
\usage{
lawn_quantile(input, field, percentiles, lint = FALSE)
}
\arguments{
\item{input}{Set of Features}

\item{field}{The property in input from which to retrieve quantile values}

\item{percentiles}{An Array of percentiles on which to calculate quantile values}

\item{lint}{(logical) Lint or not. Uses geojsonhint. Takes up increasing time
as the object to get linted increases in size, so probably use by
default for small objects, but not for large if you know they are good geojson
objects. Default: \code{FALSE}}
}
\value{
An array of the break values
}
\description{
Takes a \code{\link{data-FeatureCollection}}, a property name, set of percentiles
and returns a quantile array
}
\examples{
pts <- '{
 "type": "FeatureCollection",
 "features": [
   {
     "type": "Feature",
     "properties": {
       "population": 5
     },
     "geometry": {
       "type": "Point",
       "coordinates": [5, 5]
     }
   }, {
     "type": "Feature",
     "properties": {
       "population": 40
     },
     "geometry": {
       "type": "Point",
       "coordinates": [1, 3]
     }
   }, {
     "type": "Feature",
     "properties": {
       "population": 80
     },
     "geometry": {
       "type": "Point",
       "coordinates": [14, 2]
     }
   }, {
     "type": "Feature",
     "properties": {
       "population": 90
     },
     "geometry": {
       "type": "Point",
       "coordinates": [13, 1]
     }
   }, {
     "type": "Feature",
     "properties": {
       "population": 100
     },
     "geometry": {
       "type": "Point",
       "coordinates": [19, 7]
     }
   }
 ]
}'
lawn_quantile(pts, 'population', c(25, 50, 75, 99))
lawn_quantile(pts, 'population', c(25, 50, 75, 95))
lawn_quantile(pts, 'population', c(25, 50, 75))
lawn_quantile(pts, 'population', c(1, 50, 99.9))
}
\seealso{
Other classification: \code{\link{lawn_jenks}},
  \code{\link{lawn_nearest}}, \code{\link{lawn_reclass}}
}

