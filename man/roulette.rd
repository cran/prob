\name{roulette}
\alias{roulette}

\title{Roulette}
\description{
  Sets up a sample space for the experiment of spinning a roulette wheel once.
}

\usage{
roulette(european = FALSE, makespace = FALSE)
}

\arguments{
  \item{european}{logical.  }
  \item{makespace}{logical.}
}

\details{
  If \code{european} is \code{TRUE}, then a traditional EU roulette wheel with 37 pockets is used, otherwise, a standard US roulette wheel with 38 pockets is used.  Entries in the data frame are
  ordered in the customary way to facilitate the calculation probabilities regarding called bets.
}

\value{
  A data frame, with columns \code{num} and \code{color}, and
  an equally likely \code{probs} column if \code{makespace} is \code{TRUE}.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{cards}}}

\examples{
roulette()
roulette(european = TRUE, makespace = TRUE)
}
\keyword{misc} 
