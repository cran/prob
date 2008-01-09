\name{iidspace}
\alias{iidspace}

\title{Independent Identical Experiments}
\description{
  Sets up a probability space corresponding to independent, identical experiments.
}

\usage{
iidspace(x, ntrials, probs = NULL)
}

\arguments{
  \item{x}{a vector of outcomes.}
  \item{ntrials}{number of times to perform the experiment.}
  \item{probs}{vector of non-negative weights corresponding to \code{x}.}
}

\details{
The elementary experiment to be repeated consists of drawing an element of \code{x} according to the probabilities contained in \code{probs}.  The entries of \code{probs} need not sum to one, but they will be normalized before any computations. If \code{probs} is not specified, the equally likely model will be assumed.
}

\value{
  A data frame, with a \code{probs} column, where \code{probs} is calculated to be the probability of observing the outcome in its row under the assumption of independence and identical distribution of draws from \code{x}.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{probspace}}}

\examples{
iidspace( 1:6, ntrials = 3) # same as rolldie(3)
iidspace( 1:6, ntrials = 3, probs = 3:8 ) # unbalanced die
}
\keyword{misc} 
