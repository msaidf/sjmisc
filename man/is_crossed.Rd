% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/sjStatistics.R
\name{is_crossed}
\alias{is_crossed}
\title{Check whether two factors are crossed}
\usage{
is_crossed(f1, f2)
}
\arguments{
\item{f1}{a numeric vector or \code{\link{factor}}.}

\item{f2}{a numeric vector or \code{\link{factor}}.}
}
\value{
Logical, \code{TRUE} if factors are crossed, \code{FALSE} otherwise.
}
\description{
This function checks whether two factors are crossed,
               i.e. if each level of one factor occurs in combination
               with each level of the other factor.
}
\examples{
# crossed factors, each category of
# x appears in each category of y
x <- c(1,4,3,2,3,2,1,4)
y <- c(1,1,1,2,2,1,2,2)
# show distribution
table(x, y)
# check if crossed
is_crossed(x, y)

# not crossed factors
x <- c(1,4,3,2,3,2,1,4)
y <- c(1,1,1,2,1,1,2,2)
# show distribution
table(x, y)
# check if crossed
is_crossed(x, y)
}
\references{
Grace, K. The Difference Between Crossed and Nested Factors. \href{http://www.theanalysisfactor.com/the-difference-between-crossed-and-nested-factors/}{(web)}
}
\seealso{
\code{\link{is_nested}}
}

