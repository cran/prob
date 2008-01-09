\name{noorder}
\alias{noorder}

\title{Sort and Merge Probability Space Outcomes}
\description{
 This function sorts the rows (outcomes) of a data frame probability space, effectively removing the original order present) and aggregates the sorted
 rows into a new probability data frame with unique, sorted outcomes.
}

\usage{
noorder( space )
}

\arguments{
  \item{space}{a data frame probability space or a subset of one.}
}

\details{
The data frame \code{space} must have at least two non-\code{probs} columns or an error will result.
}

\value{
  A data frame with a \code{probs} column and sorted, unique rows.
}

\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{addrv}}, \code{\link[prob]{marginal}}}

\examples{
S <- tosscoin(3, makespace = TRUE)
noorder(S)
}

\keyword{misc} 
