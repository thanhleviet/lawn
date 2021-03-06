% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bezier.R
\name{lawn_bezier}
\alias{lawn_bezier}
\title{Curve a linestring}
\usage{
lawn_bezier(line, resolution = 10000L, sharpness = 0.85, lint = FALSE)
}
\arguments{
\item{line}{input \code{\link{data-LineString}}}

\item{resolution}{time in milliseconds between points}

\item{sharpness}{a measure of how curvy the path should be between splines}

\item{lint}{(logical) Lint or not. Uses geojsonhint. Takes up increasing time
as the object to get linted increases in size, so probably use by
default for small objects, but not for large if you know they are good geojson
objects. Default: \code{FALSE}}
}
\value{
\code{\link{data-LineString}} curved line
}
\description{
Takes a \code{\link{data-LineString}} and returns a curved version
by applying a \href{http://en.wikipedia.org/wiki/Bezier_spline}{Bezier}
spline algorithm
}
\examples{
pts <- '[
   [-21.964416, 64.148203],
   [-21.956176, 64.141316],
   [-21.93901, 64.135924],
   [-21.927337, 64.136673]
]'
lawn_bezier(lawn_linestring(pts))
lawn_bezier(lawn_linestring(pts), 9000L)
lawn_bezier(lawn_linestring(pts), 9000L, 0.65)
}
\seealso{
Other transformations: \code{\link{lawn_buffer}},
  \code{\link{lawn_concave}}, \code{\link{lawn_convex}},
  \code{\link{lawn_erase}}, \code{\link{lawn_intersect}},
  \code{\link{lawn_merge}}, \code{\link{lawn_simplify}},
  \code{\link{lawn_union}}
}

