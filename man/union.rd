\name{union}
\alias{union}
\alias{union.default}
\alias{union.data.frame}
\alias{union.ps}

\title{Union of Subsets}
\description{
  Calculates the union of subsets of a probability space.
}

\usage{
union(x, \dots)

\method{union}{default}(x, y, \ldots)

\method{union}{data.frame}(x, y, \ldots)

\method{union}{ps}(x, y, \ldots)
}

\arguments{
  \item{x, y}{vectors, data frames, or \code{ps} objects containing a sequence of items (conceptually) }
  \item{\ldots}{further arguments to be passed to or from other methods.}
}

\details{
This function operates row-wise on dataframes, and element-wise among the outcomes of \code{ps} objects. The elements of \code{union(x,y)} are those elements in \code{x} or \code{y}, or both. The definition is taken to match the version in the \code{base} package.
}

\value{
  A data frame or subset of a probability space of the same type as its arguments.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{\code{\link[prob]{intersect}}, \code{\link[prob]{setdiff}}}

\examples{
S <- cards()
A <- subset(S, suit == "Heart")
B <- subset(S, rank == "A" )
union(A, B)
   }
\keyword{misc}
