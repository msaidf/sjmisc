% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/sjImportSPSS.R
\name{get_values}
\alias{get_values}
\title{Retrieve values of labelled variables}
\usage{
get_values(x, sort.val = TRUE)
}
\arguments{
\item{x}{a variable (vector) with attached value labels.}

\item{sort.val}{logical, if \code{TRUE} (default), values of associated value labels
are sorted.}
}
\value{
The values associated with value labels from \code{x}
}
\description{
This function retrieves the values associated with value labels
               of an imported SPSS, SAS or STATA data set (via \code{\link{read_spss}},
               \code{\link{read_sas}} or \code{\link{read_stata}}).
}
\details{
Labelled vectors are numeric by default (when imported with read-functions
           like \code{\link{read_spss}}) and have variable and value labels attached.
           The value labels are associated with those values from the labelled vector.
           This function returns the values associated with the vector's value labels,
           which may differ from actual values in the vector (e.g. due to missings)
           or are not represented in sorted order.
}
\examples{
data(efc)
str(efc$e42dep)
get_values(efc$e42dep)
get_val_labels(efc$e42dep)
}
\seealso{
\code{\link{get_val_labels}}
}

