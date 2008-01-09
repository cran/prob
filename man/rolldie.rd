\name{rolldie}
\alias{rolldie}

\title{Rolling a Die}
\description{
  Sets up a sample space for the experiment of rolling a die repeatedly.
}

\usage{
rolldie(times, nsides = 6, makespace = FALSE)

}

\arguments{
  \item{times}{number of rolls.}
  \item{nsides}{number of sides on the die.}
  \item{makespace}{logical.}

}

\details{
The function uses \code{expand.grid()} to generate all possible rolls resulting from the
experiment of rolling a die.  Sides on the die are \code{1:nsides}.  Columns of the data frame are called \code{X1}, \code{X2}, up to \code{Xtimes}
}

\value{
  A data frame, with an equally likely \code{probs} column if \code{makespace} is \code{TRUE}.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{tosscoin}}}

\examples{
rolldie(2)
rolldie(3, nsides = 4)
rolldie(3, nsides = 4, makespace = TRUE)
}
\keyword{misc} 
