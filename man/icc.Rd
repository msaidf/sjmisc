% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/sjStatistics.R
\name{icc}
\alias{icc}
\title{Intra-Class-Correlation Coefficient}
\usage{
icc(x)
}
\arguments{
\item{x}{a fitted mixed effects model (\code{\link[lme4]{merMod}}-class).}
}
\value{
A numeric vector with all random intercept intraclass-correlation-coefficients.
}
\description{
This function calculates the intraclass-correlation
               (icc) for random intercepts of mixed effects models.
               Currently, only \code{\link[lme4]{merMod}} objects
               are supported.
}
\note{
\emph{Why ICC is useful}
      \enumerate{
       \item It can help you determine whether or not a linear mixed model is even necessary. If you find that the correlation is zero, that means the observations within clusters are no more similar than observations from different clusters.  Go ahead and use a simpler analysis technique.
       \item It can be theoretically meaningful to understand how much of the overall variation in the response is explained simply by clustering.  For example, in a repeated measures psychological study you can tell to what extent mood is a trait (varies among people, but not within a person on different occasions) or state (varies little on average among people, but varies a lot across occasions).
       \item It can also be meaningful to see how the ICC (as well as the between and within cluster variances) changes as variable are added to the model.
      }
      (Grace-Martin K: \emph{The Intraclass Correlation Coefficient in Mixed Models}, \href{http://www.theanalysisfactor.com/the-intraclass-correlation-coefficient-in-mixed-models/}{web})
      \cr \cr
      The calculation of the ICC for generalized linear mixed models is based on
      Wu et al. (2012).
}
\examples{
\dontrun{
library(lme4)
fit <- lmer(Reaction ~ Days + (Days | Subject), sleepstudy)
icc(fit)

sleepstudy$mygrp <- sample(1:45, size = 180, replace = T)
fit <- lmer(Reaction ~ Days + (1|mygrp) + (Days | Subject), sleepstudy)
icc(fit)}
}
\references{
\itemize{
              \item Wu S, Crespi CM, Wong WK (2012) Comparison of methods for estimating the intraclass correlation coefficient for binary responses in cancer prevention cluster randomized trials. Contempory Clinical Trials 33: 869-880 (\href{http://dx.doi.org/10.1016/j.cct.2012.05.004}{doi:10.1016/j.cct.2012.05.004})
              \item \href{http://stats.stackexchange.com/questions/18088/intraclass-correlation-icc-for-an-interaction/28100#28100}{CrossValidated (2012) \emph{Intraclass correlation (ICC) for an interaction?}}
              \item \href{http://stats.stackexchange.com/questions/113577/interpreting-the-random-effect-in-a-mixed-effect-model/113825#113825}{CrossValidated (2014) \emph{Interpreting the random effect in a mixed-effect model}}
              \item \href{http://stats.stackexchange.com/questions/67247/how-to-partition-the-variance-explained-at-group-level-and-individual-level/67356#67356}{CrossValidated (2014) \emph{how to partition the variance explained at group level and individual level}}
            }
}

