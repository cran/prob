\name{genIndepTable}
\alias{genIndepTable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generate Independent Two-way Table
}
\description{
A function to generate a two-way table with independent margins
}
\usage{
genIndepTable(n = sample(100:500, size = 1), prow = 1:3, pcol = 1:4, 
dmnames = list(X = paste("x", 1:length(prow), sep = ""), 
Y = paste("y", 1:length(pcol), sep = "")), addmargins = TRUE, 
as.df = FALSE, untable = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
sum total of observations generated
}
  \item{prow}{
nonnegative weights for the row marginal distribution
}
  \item{pcol}{
nonnegative weights for the col marginal distribution
}
  \item{dmnames}{
names for the table dimensions
}
  \item{addmargins}{
 should margins be added to the table
}
  \item{as.df}{
should the result be returned as a data frame
}
  \item{untable}{
if true then data frame will be expanded to one observation per row
}
}
\details{
This function will generate a two-way table with independent marginal distributions.
}
\value{
Either an object of class table or a data frame.
}

\author{
G. Jay Kerns
}

\keyword{ datagen }% use one of  RShowDoc("KEYWORDS")
