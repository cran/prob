\name{genXdata}
\alias{genXdata}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generate continuous model matrix data
}
\description{
This function generates correlated normal data to serve as a model matrix in a regression model.
}
\usage{
genXdata(n, nvar = 1, mu = rep(0, nvar), Sigma = diag(length(mu)), 
varnames = paste("x", 1:length(mu), sep = ""), roundto = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
how many rows
}
  \item{nvar}{
how many columns
}
  \item{mu}{
the mean of the multivariate normal distribution
}
  \item{Sigma}{
the variance-covariance matrix of the normal distribution
}
  \item{varnames}{
how you would like the variables to be named in the result
}
  \item{roundto}{
number of places to round the generated values
}
}
\details{
This function generates correlated normal data to serve as a model matrix in a regression model.

}
\value{
A data frame of generated data
}

\author{
G. Jay Kerns
}

\keyword{ ~datagen }% use one of  RShowDoc("KEYWORDS")
