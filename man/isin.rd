\name{isin}
\alias{isin}
\alias{isin.default}
\alias{isin.data.frame}

\title{Test Whether One Vector Is In Another Vector}

\description{See the title.}


\usage{
isin(x, \dots)

\method{isin}{default}(x, y, ordered = FALSE, \ldots)

\method{isin}{data.frame}(x, \ldots)
}

\arguments{
  \item{x, y}{vectors.}
  \item{ordered}{logical.}
  \item{\ldots}{further arguments to be passed to or from other methods.}
}

\details{
The function will only return \code{TRUE} if every element of \code{y} is present in the vector \code{x}, counting multiplicity.  See the examples below.  Of \code{ordered = TRUE}, then elements must be in the vector \code{x} in the order specified in \code{y}.  Compare this to the behavior of the \code{\%in\%} function in the \code{base} package.

This is a generic function with a moethod for data frames, which applies \code{isin()} to each row of the data frame, with a vector as a result.
}

\value{
 Logical, or a vector of logicals.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[base]{countrep}}, \code{\link[prob]{isrep}}}

\examples{
x <- 1:10
y <- 3:7
z <- c(3,3,7)
isin(x,y)
isin(x,z)
isin(x, c(3,4,5), ordered = TRUE)
isin(x, c(3,5,4), ordered = TRUE)

S <- rolldie(4)
subset(S, isin(S, c(2,2,6), ordered = TRUE))

}
\keyword{misc} 
