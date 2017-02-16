\name{gen2wayTable}
\alias{gen2wayTable}

\title{
Generate Two-way Tables
}
\description{
A function to randomly generate arbitrary two-way tables
}
\usage{
gen2wayTable(n = sample(100:500, size = 1), pmatrix = matrix(1:12, nrow = 3),
dmnames = list(X = paste("x", 1:nrow(pmatrix), sep = ""),
Y = paste("y", 1:ncol(pmatrix), sep = "")), 
addmargins = TRUE, as.df = FALSE, untable = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
sum total observations 
}
  \item{pmatrix}{
  matrix of nonnegative weights for the probability distribution 
}
  \item{dmnames}{
  names of the table dimensions
}
  \item{addmargins}{
should margins be added?
}
  \item{as.df}{
table will be returned as a data frame
}
  \item{untable}{
  should counts be untabled to single observation per row
}
}

\value{
  An object of class table containing the generated values.
}
\author{
G. Jay Kerns
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ datagen }% use one of  RShowDoc("KEYWORDS")
