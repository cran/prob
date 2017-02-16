\name{prob-package}
\alias{prob-package}
\docType{package}
\title{
Elementary Probability on Finite Sample Spaces
}
\description{
 A framework for performing elementary probability calculations on finite sample spaces.   It is built around the concept of a \emph{probability space}, which is an object of outcomes and an object \code{probs} of probabilities associated with the outcomes.
 
 There are two ways to represent a probability space in the \code{prob} package.  The first is with a data frame that has a \code{probs} column.  Entries of \code{probs} should be nonnegative and sum to one.  The second way is with a list having two components: \code{outcomes} and \code{probs}.  The component \code{outcomes} is a list containing elements of the most arbitrary sort; they can be data frames, vectors, more lists, whatever.  The \code{probs} component is a vector (of the same length as \code{outcomes}), which associates to each element of \code{outcomes} a nonnegative number.  As before, the only additional requirement is that the \code{sum} of \code{probs} be one.
 
 There are functions in the \code{prob} package to address many topics in a standard course in elementary probability.  In particular, there are methods for setting up sample spaces, counting tools, defining probability spaces, performing set algebra, calculating probability and conditional probability, tools for simulation and checking the law of large numbers, adding random variables, and finding marginal distributions.  See \code{vignette("prob")} for details.
 
 There are some functions included to set up some of the standard sample spaces usually encountered in an elementary probability course.  Examples include tossing a coin, rolling a die, drawing from a 52 card deck, \emph{etc}.  If you know of topics that would be of general interest and could be incorporated in the \code{prob} package framework, I would be happy to hear about them.  Comments and suggestions are always welcomed.
 
 The \code{prob} package is a first step toward addressing probability in \code{R}, and has been written in the spirit of simplicity.  The procedures work best to solve problems that are manageable in scope.  Users that wish to investigate especially large or intricate problems are encouraged to modify and streamline the code to suit their individual needs. 

Characteristic functions for the base probability distributions have been included.  For details, type \code{vignette("charfunc")} at the command prompt.
}

\details{
\tabular{ll}{
Package: \tab prob\cr
Version: \tab 1.0-0\cr
Date: \tab 2017-02-15\cr
Depends: \tab combinat, fAsianOptions\cr
Suggests: \tab VGAM, hypergeo\cr
LazyLoad: \tab no\cr
License: \tab GPL version 3 or newer\cr
URL: \tab http://prob.r-forge.r-project.org,
http://gkerns.people.ysu.edu/\cr
}

}
\author{
G. Jay Kerns <gkerns@ysu.edu>

Maintainer: G. Jay Kerns <gkerns@ysu.edu>
}
\keyword{package}
