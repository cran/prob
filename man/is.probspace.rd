\name{is.probspace}
\alias{is.probspace}


\title{Testing for a Probability Space}
\description{
  Decides whether a given object is a probability space.
}

\usage{
is.probspace(x)
}

\arguments{
  \item{x}{an object for which probability space status should be checked.}
}

\details{
 It first checks if the class of the object includes \code{ps}, and if so \code{TRUE} is returned.  If not, then it checks that the object is a data frame and contains a \code{probs} column.  Lastly, it checks whether all entries of \code{probs} are nonnegative.   Note that it does not check whether the sum of \code{probs} is one, to allow for the possibility that the input object is a proper subset of a probability space.
  }
  

\value{
  Logical.
}

\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{probspace}}}

\examples{
S <- rolldie(3, makespace = TRUE)
is.probspace(S)
}
\keyword{misc} 
