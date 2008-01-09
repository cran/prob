\name{nsamp}
\alias{nsamp}


\title{Number of Samples from an Urn}
\description{
  Calculates the number of samples from an urn under different sampling scenarios.
}

\usage{
nsamp(n, k, replace = FALSE, ordered = FALSE)

}

\arguments{
  \item{n}{an integer or integer vector.}
  \item{k}{an integer or integer vector.}
  \item{replace}{logical indicating whether sampling should be done with replacement.}
  \item{ordered}{logical indicating whether order among samples is important.}
}

\details{
The \code{nsamp()} function will calculate the number of samples from an urn under assorted assumptions on the sampling procedure.  The arguments are: \code{n}, the number of (distinguishable) objects in the urn, \code{k}, the sample size, and \code{replace}, \code{ordered} as documented in \code{\link[prob]{urnsamples}}.

\code{nsamp()} is vectorized, so that entering vectors instead of numbers for \code{n}, \code{k}, \code{replace}, and \code{ordered} results in a vector of corresponding answers.

The formulas used in the four possible combinations of \code{replace} and \code{ordered} are as follows.
 \itemize{
 \item
 When \code{replace = TRUE} and \code{ordered = TRUE}, the value is \eqn{n^k}.
 
 \item
 When \code{replace = FALSE} and  \code{ordered = TRUE}, the value is
 \eqn{n!/(n-k)!}.
 
 
 \item
 When \code{replace = FALSE} and \code{ordered = FALSE}, the value is
 \eqn{n!/[k!(n-k)!]}.
 
 \item
 When \code{replace = TRUE} and  \code{ordered = FALSE}, the value is
 \eqn{(n-1+k)!/[(n-1)!k!]}.

 }

 }

\value{
   A number.
}

\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{urnsamples}}}

\examples{
nsamp(n=3, k=2, replace = TRUE, ordered = TRUE)
nsamp(n=3, k=2, replace = TRUE, ordered = FALSE)
nsamp(n=3, k=2, replace = FALSE, ordered = FALSE)
nsamp(n=3, k=2, replace = FALSE, ordered = TRUE)
}

\keyword{misc} 
