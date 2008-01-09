\name{permsn}
\alias{permsn}


\title{Generate All Permutations of x Elements Taken m at a Time}
\description{
  Generate all permutations of the elements of x taken m at a time.
  If x is a positive integer, returns all permutations of the
  elements of seq(x) taken m at a time.
}

\usage{
permsn(x, m)
}

\arguments{
  \item{x}{vector source for permutations, or integer n for x <- seq(n).}
  \item{m}{number of elements to permute.}

}


\value{
 a list or array (in nondegenerate cases).
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}, modified from the \code{combn} function in the package \code{utils}.}

\seealso{\code{\link[combinat]{combn}}}

\examples{
permsn(3,2)
}

\keyword{misc} 
