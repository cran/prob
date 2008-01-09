\name{euchredeck}
\alias{euchredeck}

\title{A Deck of Playing Cards for Euchre}
\description{
  The title says it all.
}

\usage{
euchredeck(benny= FALSE, makespace = FALSE)

}

\arguments{
  \item{benny}{logical.}
  \item{makespace}{logical.}
}

\details{
This is a conventional Euchre deck which uses a deck of 24 standard playing cards consisting of Ace, King, Queen, Jack, 10, and 9 of each of the four suits.   If \code{benny = TRUE} then a Joker is added to the deck.
}

\value{
  A data frame with columns \code{value} and \code{suit}, and optionally a column of equally likely \code{probs}.
}


\seealso{\code{\link[prob]{cards}}, \code{\link[prob]{tosscoin}}, and \code{\link[prob]{roulette}}

}

\examples{
euchredeck()
euchredeck(benny = TRUE, makespace = TRUE)
}
\keyword{data} 
