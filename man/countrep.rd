\name{countrep}
\alias{countrep}
\alias{countrep.default}
\alias{countrep.data.frame}

\title{Count Repetitions}
\description{
  Counts the number of repetitions of \code{vals} in a given vector \code{x}.
}

\usage{
countrep(x, \dots)

\method{countrep}{default}(x, vals = unique(x), nrep = 2,  \dots)

\method{countrep}{data.frame}(x, \dots)
}

\arguments{
  \item{x}{an object in which repeats should be counted.}
  \item{vals}{values that may be repeated.}
  \item{nrep}{exact number of repeats desired, defaults to pairs.}
  \item{\ldots}{further arguments to be passed to or from other methods.}
}

\details{
 This is a generic function, with methods supplied for data frames and vectors. The default behavior counts the number of pairs of elements of \code{x}.  One can find the number of triples, etc., by changing the \code{nrep} argument.  If there are specific values for which one is looking for repeats, these can be specified with the \code{vals} argument.  Note that the function only checks for \emph{exactly} \code{nrep} instances, so two pairs of a specific element would be counted as 0 pairs and 1 quadruple. See the examples. 
 
 The data frame method uses \code{apply} to apply \code{countrep.default} to each row of the data frame.
}

\value{
  If \code{x} is a vector, then the value is an integer.  If \code{x} is a data frame then the value is a vector, with entries the corresponding value for the respective rows of \code{x}
}

\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{isrep}}}

\examples{
x <- c(3,3,2,2,3,3,4,4)
countrep(x)  # one pair each of 2s and 4s
countrep(x, nrep = 4) 
countrep(x, vals = 4) # one pair of 4s
}

\keyword{methods}
