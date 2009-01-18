\name{intersect}
\alias{intersect}
\alias{intersect.default}
\alias{intersect.data.frame}
\alias{intersect.ps}

\title{Intersection of Subsets}
\description{
  Calculates the intersection of subsets of a probability space.  Comparisons are made row-wise, so that in the data frame case, \code{intersect(A,B)} is a data frame with those rows that are both in \code{A} and in \code{B}.
}

\usage{
intersect(x, \dots)

\method{intersect}{default}(x, y, \ldots)

\method{intersect}{data.frame}(x, y, \ldots)

\method{intersect}{ps}(x, y, \ldots)
}

\arguments{
  \item{x, y}{vectors, data frames, or \code{ps} objects containing a sequence of elements (conceptually). }
  \item{\ldots}{further arguments to be passed to or from other methods.}
}

\details{
This is a generic function, extended from the \code{intersect} function in the \code{base} package.  The elements of \code{intersect(x,y)} are those elements in \code{x} and in \code{y}. The original definition is preserved in the case that \code{x} and \code{y} are vectors of the same mode.
}

\value{
  A vector, data frame, or subset of a probability space of the same type as its arguments.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}, based on a suggestion made by Brian Ripley in \code{R}-devel, 12/11/07.}

\seealso{\code{\link[prob]{union}}, \code{\link[prob]{setdiff}}}

\examples{
S <- cards()
A <- subset(S, suit == "Heart")
B <- subset(S, rank == "A" )
intersect(A, B)
}
\keyword{misc} 
