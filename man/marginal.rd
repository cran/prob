\name{marginal}
\alias{marginal}

\title{Marginal Distributions}
\description{
  Computes the marginal distribution of a set of variables.
}

\usage{
marginal(space, vars = NULL)
}

\arguments{
  \item{space}{a data frame probability space or a subset of one.}
  \item{vars}{an optional character vector of variable names in \code{space}.}
}

\details{
If \code{vars} is not specified, then \code{marginal()} will set \code{vars} to be all non-\code{probs} columns, which can be useful in the case that it is desired to aggregate duplicated rows.
}

\value{
 A data frame with a \code{probs} column.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{
See \code{\link[prob]{addrv}} for adding random variables to a data frame probability space.}

\examples{
S <- rolldie(3, makespace = TRUE)
marginal(S, vars = c("X1", "X2"))
}
\keyword{manip}
