\name{probspace}
\alias{probspace}
\alias{probspace.default}
\alias{probspace.list}

\title{Probability Spaces}
\description{
  Forms a probability space from a set of outcomes and (optional) vector of probabilities.
}

\usage{
probspace(x, \dots)

\method{probspace}{default}(x, probs, \dots)

\method{probspace}{list}(x, probs, \dots)
}

\arguments{
  \item{x}{a vector, data frame, or list of outcomes.}
  \item{probs}{a vector of non-negative weights of the same length as \code{outcomes}}
  \item{\ldots}{further arguments to be passed to or from other methods.}
}

\details{
  The elements of \code{probs} will be normalized to ensure that their sum is one.  If \code{probs} is not specified, then the equally likely model is assumed in which every outcome has the same probability.
}

\value{
If \code{outcomes} is a vector or data frame, then the value is a data frame with
an added \code{probs} column.  If \code{outcomes} is a list, then the value is a list with
components \code{outcomes} (the supplied list) and a \code{probs} component.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{iidspace}}}

\examples{
R <- rolldie(3)
probspace(R)
}

\keyword{misc} 
