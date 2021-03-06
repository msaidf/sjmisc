% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/sjImportSPSS.R
\name{to_sjPlot}
\alias{to_sjPlot}
\title{Convert a haven-imported data frame to sjPlot format}
\usage{
to_sjPlot(x)
}
\arguments{
\item{x}{a data frame, which contains \code{\link[haven]{labelled}} class vectors or a single vector
of class \code{labelled}.}
}
\value{
a data frame or single vector (depending on \code{x}) with 'sjPlot' friendly
          object classes.
}
\description{
This function converts a data frame, which was imported with any of
               \code{haven}'s read functions and contains \code{\link[haven]{labelled}} class vectors or
               a single vector of type \code{labelled} into an sjPlot friendly data
               frame format, which means that simply all \code{\link[haven]{labelled}} class
               attributes will be removed, so all vectors / variables will most
               likely become \code{\link{atomic}}. Additionally, \code{tbl_df} and
               \code{tbl} class attributes will be removed from data frames. See 'Note'.
}
\note{
This function is currently only used to avoid possible compatibility issues
        with \code{\link[haven]{labelled}} class vectors and \code{tbl_df} resp.
        \code{tbl} class attributes for data frames. Some known issues with \code{\link[haven]{labelled}}
        class vectors have already been fixed, so it might be that this function
        will become redundant in the future. Currently, data frames with \code{tbl_df} and
        \code{tbl} class attributes may cause difficulties when indexing columns
        like \code{data.frame[, colnr]} - only \code{data.frame[[colnr]]} seems
        to be safe when accessing data frame columns from within function calls.
}
\seealso{
\href{http://www.strengejacke.de/sjPlot/datainit/}{sjPlot manual: data initialization}
}

