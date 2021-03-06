% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/padding.r
\name{gtable_add_padding}
\alias{gtable_add_padding}
\title{Add padding around edges of table.}
\usage{
gtable_add_padding(x, padding)
}
\arguments{
\item{x}{a \code{\link[=gtable]{gtable()}} object}

\item{padding}{vector of length 4: top, right, bottom, left.  Normal
recycling rules apply.}
}
\description{
Add padding around edges of table.
}
\examples{
library(grid)
gt <- gtable(unit(1, "null"), unit(1, "null"))
gt <- gtable_add_grob(gt, rectGrob(gp = gpar(fill = "black")), 1, 1)

plot(gt)
plot(cbind(gt, gt))
plot(rbind(gt, gt))

pad <- gtable_add_padding(gt, unit(1, "cm"))
plot(pad)
plot(cbind(pad, pad))
plot(rbind(pad, pad))
}
