\name{prob}
\alias{prob}
\alias{Prob}
\alias{Prob.default}
\alias{Prob.ps}

\title{Probability and Conditional Probability}
\description{
  Calculates probability and conditional probability of events.
}

\usage{
Prob(x, \dots)

\method{Prob}{default}(x, event = NULL, given = NULL, \ldots)

\method{Prob}{ps}(x, event = NULL, given = NULL, \ldots)
}

\arguments{
  \item{x}{a probability space or a subset of one.}
  \item{event}{logical expression indicating elements or rows of \code{space} to keep:
    missing values are taken as false.}
  \item{given}{either a subset of a probability space or a logical expression indicating elements or rows of \code{space} to keep:
    missing values are taken as false.}
  \item{\ldots}{further arguments to be passed to or from other methods.}
}

\details{
  This function calculates the probability of events or subsets of a given sample space.
  Conditional probability is also implemented.  In essence, the \code{Prob()} function operates by summing the \code{probs} column of its argument.  It will find subsets on the fly if desired.  
  
  The \code{event} argument is used to define a subset of \code{x}, that is, the only outcomes used in the probability calculation will be those that are elements of \code{x} and satisfy \code{event} simultaneously. In other words, \code{Prob(x,event)} calculates \code{Prob(intersect(x, subset(x, event)))}.  Consequently, \code{x} should be the entire probability space in the case that \code{event} is non-null.
  
  There is some flexibility in the \code{given} argument in that it can be either a data frame or it can be a logical expression that defines the subset.  However, that flexibility is limited.  In particular, if \code{given} is a logical expression, then \code{event} must also be specified (also a logical expression).  And in this case, the argument \code{x} should be the entire sample space, not a subset thereof. 
}

\value{
  A number in the interval \code{[0,1]}.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{probspace}}, \code{\link[prob]{iidspace}}}

\examples{
S <- rolldie(times = 3, makespace = TRUE )
Prob(S, X1+X2 > 9 )
Prob(S, X1+X2 > 9, given = X1+X2+X3 > 7 )
}
\keyword{misc} 
