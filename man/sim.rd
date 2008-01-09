\name{sim}
\alias{sim}
\alias{sim.default}
\alias{sim.ps}

\title{Simulate Draws from a Sample Space}
\description{
  Simulates the experiment of drawing from a sample space.
}

\usage{
sim(x, \dots)

\method{sim}{default}(x, ntrials, \ldots)

\method{sim}{ps}(x, ntrials, \ldots)
}

\arguments{
  \item{x}{a probability space or a subset of one.}
  \item{ntrials}{number of times to repeat the experiment.}
  \item{\ldots}{further arguments to be passed to or from other methods.}
}

\details{
 The \code{sim()} function is a wrapper for \code{sample()}, except that it strips the \code{probs} component from the result and (if \code{x} is a data frame) renames the rownames of the data frame consecutively from \code{1:ntrials}.
}

\value{
  A data frame if \code{space} is a data frame, or a list if \code{space} is of class \code{ps}.
}

\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{empirical}}}

\examples{
S <- cards(makespace = TRUE)
sim(S, ntrials = 5)

T <- urnsamples(S, 2)
U <- probspace(T)
sim(U, ntrials = 4)
}

\keyword{misc} 
