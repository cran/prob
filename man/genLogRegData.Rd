\name{genLogRegData}
\alias{genLogRegData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generate data for logistic regression
}
\description{
This function generates data ready for a logistic regression model
}
\usage{
genLogRegData(xdata, beta = rep(1, ncol(xdata)), yname = "y")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xdata}{
the model matrix
}
  \item{beta}{
vector of parameters to multiply the model matrix
}
  \item{yname}{
the name for the generated y values
}
}
\details{
This function generates data ready for a logistic regression model
}
\value{
A data frame with the model matrix and the generated y values added
}

\author{
G. Jay Kerns
}

\keyword{ ~datagen }% use one of  RShowDoc("KEYWORDS")
