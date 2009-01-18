\name{setdiff}
\alias{setdiff}
\alias{setdiff.default}
\alias{setdiff.data.frame}
\alias{setdiff.ps}

\title{Set Difference of Subsets}
\description{
  Calculates the (nonsymmetric) set difference of subsets of a probability space.
}

\usage{
setdiff(x, \dots)

\method{setdiff}{default}(x, y, \ldots)

\method{setdiff}{data.frame}(x, y, \ldots)

\method{setdiff}{ps}(x, y, \ldots)
}

\arguments{
  \item{x, y}{vectors, data frames, or \code{ps} objects containing a sequence of items (conceptually).}
   \item{\ldots}{further arguments to be passed to or from other methods.}
}

\details{
This function operates row-wise on dataframes, and element-wise among the outcomes of \code{ps} objects.  The elements of \code{setdiff(x,y)} are those elements in \code{x} but not in \code{y}. The definition is taken to match the version in the \code{base} package.
}

\value{
  A data frame or subset of a probability space of the same type as its arguments.
}


\author{G. Jay Kerns \email{gkerns@ysu.edu}, essentially verbatim from a suggestion made by Brian Ripley on \code{R}-devel, 12/11/07.}

\seealso{\code{\link[prob]{intersect}}, \code{\link[prob]{union}}}

\examples{
S <- cards()
A <- subset(S, suit == "Heart")
B <- subset(S, rank == "A" )
setdiff(B, A)
}
\keyword{misc}
