\name{tosscoin}
\alias{tosscoin}

\title{Tossing a Coin}
\description{
  Sets up a sample space for the experiment of tossing a coin
  repeatedly with the outcomes "H" or "T".
}

\usage{
tosscoin( times, makespace = FALSE )

}

\arguments{
  \item{times}{number of tosses.}
  \item{makespace}{logical.}
}
\details{
 The function uses \code{expand.grid()} to generate all possible sequences of flips resulting from the
experiment of tossing a coin.  Columns of the dataframe are denoted \code{toss1}, \code{toss2}, up to \code{tosstimes},
}

\value{
  A data frame, with an equally likely \code{probs} column if \code{makespace} is \code{TRUE}.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{rolldie}}}

\examples{
tosscoin(2)
tosscoin(3, makespace = TRUE)
 }
\keyword{misc} 
