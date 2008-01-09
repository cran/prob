\name{subset}
\alias{subset}
\alias{subset.ps}


\title{Subsets of Probability Spaces}
\description{
 This is a method for \code{subset()} for the case when the input object is a
 probability space of class \code{ps}.
}

\usage{
subset(x, \ldots)

\method{subset}{ps}(x, subset, ...)

}

\arguments{
  \item{x}{a probability space.}
  \item{subset}{logical expression indicating elements or rows of \code{space} to keep:
    missing values are taken as false.}
  \item{\ldots}{further arguments to be passed to or from other methods.}
}

\details{
This function simply extends the existing \code{subset()} function to \code{ps} objects.
}

\value{
A \code{ps} object, a subset of a probability space.
}



\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{
\code{\link[prob]{intersect}},
\code{\link[prob]{setdiff}},
\code{\link[prob]{union}},
\code{\link[prob]{isin}}

}

\examples{
L <- tosscoin(2)
M <- urnsamples(L, 3)
N <- probspace(M)
subset(N, all(toss1=="H"))
subset(N, any(toss2=="T"))
}

\keyword{misc} 
