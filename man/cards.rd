\name{cards}
\alias{cards}

\title{A Standard Set of Playing Cards}
\description{
  The title says it all.
}

\usage{
cards(jokers = FALSE, makespace = FALSE)

}

\arguments{
  \item{jokers}{logical.}
  \item{makespace}{logical.}

}

\details{
  This generates a data frame sample space of a standard deck of 52 playing cards.  Optionally, the user can specify that Jokers be included, which have a \code{rank} but with \code{suit} a missing value.
}

\value{
  A data frame with columns \code{rank} and \code{suit}, and optionally a column of equally likely \code{probs}.
}


\seealso{\code{\link[prob]{rolldie}}, \code{\link[prob]{tosscoin}}, and \code{\link[prob]{roulette}}

}

\examples{
cards()
cards(makespace = TRUE)
}
\keyword{data} 
