% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/sjStatistics.R
\name{cv}
\alias{cv}
\title{Coefficient of Variation}
\usage{
cv(x)
}
\arguments{
\item{x}{a (numeric) vector / variable or a fitted linear model of class
\code{\link{lm}}, \code{\link[lme4]{merMod}} (lme4) or
\code{\link[nlme]{lme}} (nlme).}
}
\value{
The coefficient of variation of \code{x}.
}
\description{
Compute coefficient of variation for single variables
               (standard deviation divided by mean) or for fitted
               linear (mixed effects) models (root mean squared error
               (RMSE) divided by mean of dependent variable).
}
\details{
The advantage of the cv is that it is unitless. This allows
           coefficient of variation to be compared to each other in ways
           that other measures, like standard deviations or root mean
           squared residuals, cannot be
           (\href{http://www.ats.ucla.edu/stat/mult_pkg/faq/general/coefficient_of_variation.htm}{source: UCLA-FAQ}).
}
\examples{
data(efc)
cv(efc$e17age)

fit <- lm(neg_c_7 ~ e42dep, data = efc)
cv(fit)

library(lme4)
fit <- lmer(Reaction ~ Days + (Days | Subject), sleepstudy)
cv(fit)

library(nlme)
fit <- lme(distance ~ age, data = Orthodont) # random is ~ age
cv(fit)
}
\references{
\href{http://www.ats.ucla.edu/stat/mult_pkg/faq/general/coefficient_of_variation.htm}{UCLA-FAQ: What is the coefficient of variation?}
}
\seealso{
\code{\link{rmse}}
}

