% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/sjStatistics.R
\name{levene_test}
\alias{levene_test}
\title{Plot Levene-Test for One-Way-Anova}
\usage{
levene_test(depVar, grpVar)
}
\arguments{
\item{depVar}{The dependent variable. Will be used with following formular:
\code{aov(depVar ~ grpVar)}}

\item{grpVar}{The grouping variable, as unordered factor. Will be used with following formular:
         \code{aov(depVar ~ grpVar)}}
}
\description{
Plot results of Levene's Test for Equality of Variances for One-Way-Anova.
}
\examples{
data(efc)
levene_test(efc$c12hour, efc$e42dep)
}

