\name{empirical}
\alias{empirical}


\title{Empirical Summary of a Simulation}
\description{
  Calculates relative frequencies of the rows of a data frame.
}

\usage{
empirical(x)
}

\arguments{
  \item{x}{a data frame.}
}

\details{
The function works by adding a \code{probs} column to \code{x} with equally likely entries of \eqn{1/n}, where \eqn{n} is the number of rows.  Then it aggregates the duplicated rows of \code{x} while accumulating the probabilities associated with each.
}

\value{
  A data frame formed by aggregating the rows of \code{x}.  A \code{probs} column is added giving the relative frequencies of each of the rows.
}



\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{sim}}}

\examples{
S <- tosscoin(2, makespace = TRUE)
sims <- sim(S, ntrials = 50000)
empirical(sims)
}

\keyword{manip} 
