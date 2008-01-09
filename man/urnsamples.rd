\name{urnsamples}
\alias{urnsamples}
\alias{urnsamples.default}
\alias{urnsamples.data.frame}

\title{Sampling from Urns}
\description{
This function creates a sample space associated with the experiment of sampling distinguishable objects from an urn.
}

\usage{
urnsamples(x, \dots)

\method{urnsamples}{default}(x, size, replace = FALSE, ordered = FALSE, \ldots)

\method{urnsamples}{data.frame}(x, size, replace = FALSE, ordered = FALSE, \ldots)
}

\arguments{
  \item{x}{a vector or data frame from which sampling should take place.}
  \item{size}{number indicating the sample size.}
  \item{replace}{logical indicating whether sampling should be done with replacement.}
  \item{ordered}{logical indicating whether order among samples is important.}
  \item{\ldots}{further arguments to be passed to or from other methods.}
}

\details{
 The function operates on the indices of the urn (or rows, in the case \code{urn} is a data frame).  It then takes those samples and substitutes back into \code{urn} to generate the entries of the data frame (or list, respectively).  In the case that \code{urn} has repeated values, the result will be repeated values in the output.
 
 Note that \code{urnsamples} strips \code{x} of any existing \code{probs} column before sampling.
}

\value{
  A data frame if \code{urn} is a vector, and a list if \code{urn} is a data frame.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{iidspace}}, \code{\link[prob]{probspace}}
\code{\link[prob]{nsamp}}

}

\examples{
urnsamples(1:10, size = 5)
S <- cards()
urnsamples(S, size = 2)
}
\keyword{misc} 
