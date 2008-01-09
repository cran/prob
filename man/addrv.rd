\name{addrv}
\alias{addrv}


\title{Adding Random Variables to a Probability Space}
\description{
  Adds a column to a data frame probability space containing the values of a random variable computed from the existing columns of the space.
}

\usage{
addrv(space, FUN = NULL, invars = NULL, name = NULL, \dots)

}

\arguments{
  \item{space}{a data frame with a \code{probs} column.}
  \item{FUN}{a function to be applied to each row of outcomes in \code{space}}
  \item{invars}{a character vector indicating input columns of \code{space}}
  \item{name}{an (optional) name to give the defined random variable.}
  \item{\dots}{an expression defining a random variable.}
}

\details{
 There are two ways to add a random variable to a data frame probability space; see the examples.  The argument \code{FUN} has precedence and will be used if specified.  If \code{name} is not specified, then the new random variable will be called \code{X}.  Note that this function only works for data frames, as a method for objects of class \code{ps} has not been implemented.
}

\value{
  The input data frame with an additional column called \code{name}.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{See \code{\link[base]{transform}} to add a column to a data frame of outcomes (not yet a probability space).}

\examples{
S <-rolldie(3, makespace = TRUE)
addrv(S, sum, name = "Y")
addrv(S, Z = X3 - X2 )
}

\keyword{manip} 
