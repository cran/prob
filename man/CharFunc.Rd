% Part of the prob package, http://www.prob.rfor.org
% Copyright 2009 G. Jay Kerns
% Distributed under GPL 2 or later

\name{CharFunc}
\concept{characteristic function}
\alias{cfbeta}
\alias{cfbinom}
\alias{cfcauchy}
\alias{cfchisq}
\alias{cfexp}
\alias{cff}
\alias{cfgamma}
\alias{cfgeom}
\alias{cfhyper}
\alias{cflogis}
\alias{cflnorm}
\alias{cfnbinom}
\alias{cfnorm}
\alias{cfpois}
\alias{cfsignrank}
\alias{cft}
\alias{cfunif}
\alias{cfweibull}
\alias{cfwilcox}
\title{Characteristic functions}
\description{
  The characteristic functions for selected probability distributions supported
  by \R.  All base distributions are included, with the exception of
  \code{wilcox} and \code{signedrank}.  For more resources please see the
  References, and for complete details and formulas see the \code{charfunc}
  vignette, which can be accessed by \code{vignette("charfunc")} at the
  command prompt.  Only the simplest formulas are listed below.
}

\usage{
cfbeta(t, shape1, shape2, ncp = 0)
cfbinom(t, size, prob)
cfcauchy(t, location = 0, scale = 1)
cfchisq(t, df, ncp = 0)
cfexp(t, rate = 1)
cff(t, df1, df2, ncp, kmax = 10)
cfgamma(t, shape, rate = 1, scale = 1/rate)
cfgeom(t, prob)
cfhyper(t, m, n, k)
cflnorm(t, meanlog = 0, sdlog = 1)
cflogis(t, location = 0, scale = 1)
cfnbinom(t, size, prob, mu)
cfnorm(t, mean = 0, sd = 1)
cfpois(t, lambda)
cfsignrank(t, n)
cft(t, df, ncp)
cfunif(t, min=0, max=1)
cfweibull(t, shape, scale = 1)
cfwilcox(t, m, n)
}

\arguments{
  \item{t}{numeric value.  Some of the above are vectorized functions.}
  \item{df}{degrees of freedom (\eqn{> 0}, maybe non-integer)}
  \item{df1, df2}{numerator and denominator degrees of freedom, must be positive}
  \item{k}{the number of balls drawn from the urn.}
  \item{kmax}{the number of terms in the series.}
  \item{lambda}{vector of (positive) means.}
  \item{location, scale}{location and scale parameters; scale must be positive.}
  \item{m}{the number of white balls in the urn.}
  \item{meanlog, sdlog}{mean and standard deviation of the distribution
    on the log scale with default values of \code{0} and \code{1} respectively.}
  \item{mean}{vector of means.}
  \item{min, max}{(unif) lower and upper limits of the distribution.
    Must be finite and in the correct order.}
  \item{mu}{(nbinom) alternative parametrization via mean}
  \item{n}{the number of black balls in the urn.}
  \item{ncp}{non-centrality parameter \eqn{\delta}}  
  \item{prob}{probability of success in each trial.}
  \item{rate}{an alternative way to specify the scale; must be positive.}  
  \item{sd}{vector of standard deviations.}
  \item{size}{number of trials (binom) or target for number of successful trials
    (nbinom).}
  \item{shape}{shape parameter, must be positive (gamma, weibull)}
  \item{shape1, shape2}{positive parameters of the Beta distribution.}  
}

\value{
  a complex number in rectangular (cartesian) coordinates.
}


\details{
  The characteristic function \eqn{\phi} of a random variable \eqn{X} is defined by
  \deqn{ \phi(t) = E e^{itX} }{phi(t) = E e^(-itX)}
  for all \eqn{-\infty < t < \infty}.
  
  Every random variable has a characteristic function, and every characteristic function
  uniquely determines the distribution of its associated random variable.  For
  more details on characteristic functions and their properties, see Lukacs (1970).
}


\section{Beta distribution}{
  For the probability density function, see \code{\link{dbeta}}.
    
  The characteristic function for central Beta is given by
  \deqn{ \phi(t) = _{1}F_{1}(\alpha; \alpha + \beta, it) }{
    phi(t) = _{1}F_{1}(shape1; shape1 + shape2, it) 
  }
  where \eqn{F} is the confluent hypergeometric function calculated with
  \code{\link[fAsianOptions]{kummerM}} in the \code{fAsianOptions} package.
  
  As of the time of this writing, we must calculate the characteristic function
  of the noncentral Beta with numerical integration according to the definition.
}


\section{Binomial distribution}{
  For the probability mass function, see \code{\link{dbinom}}.

  The characteristic function is given by
  \deqn{ \phi(t) = [p e^{it} + (1-p)]^{n} }{
    phi(t) = [pe^(it) + (1-p)]^n 
  }
}


\section{Cauchy Distribution}{
  For the probability density function, see \code{\link{dcauchy}}.

  The characteristic function is given by
  \deqn{ \phi(t) = e^(it\theta - \sigma|t|) }{
    phi(t) = e^(i*t*theta - sigma*|t|) 
  }
}


\section{Chi-square Distribution}{
  For the probability density function, see \code{\link{dchisq}}.

  The characteristic function is given by
  \deqn{ \phi(t) = \frac{\exp(\frac{i\delta t}{1 - 2it})}{(1 - 2it)^{df/2}} }{
    phi(t) = \frac{\exp(\frac{i\delta t}{1 - 2it})}{(1 - 2it)^{df/2}} }
}


\section{Exponential Distribution}{
  For the probability density function, see \code{\link{dexp}}.

  This is the special case of gamma when \eqn{\alpha = 1}.
}


\section{F Distribution}{
  For the probability density function, see \code{\link{df}}.

  For the central \eqn{F} we use confluent hypergeometric function of the second kind,
  also known as \code{\link[fAsianOptions]{kummerU}}, from the
  \code{fAsianOptions} package.

  For noncentral \eqn{F} we use confluent hypergeometric function of the
  first kind.  See the vignette for details. 
}


\section{Gamma Distribution}{
  For the probability density function, see \code{\link{dgamma}}.

  The characteristic function is given by
  \deqn{ \phi(t) = (1 - \beta it)^(-\alpha) }{
    phi(t) = (1 - beta*i*t)^(-alpha) 
  }
}


\section{Geometric Distribution}{
  For the probability mass function, see \code{\link{dgeom}}.

  This is the special case of negative binomial when \eqn{r = 1}.
}


\section{Hypergeometric Distribution}{
  For the probability mass function, see \code{\link{dhyper}}.

  The formula for the characteristic function is based on the Gaussian
  hypergeometric series, calculated with \code{\link[hypergeo]{hypergeo}} in
  package \code{hypergeo}.  It is too complicated to be included here; please see
  the vignette.
}


\section{Logistic Distribution}{
  For the probability density function, see \code{\link{dlogis}}.

  The characteristic function is given by
  \deqn{ \phi(t) = \pi t / \sinh(\pi t) }{
    phi(t) = \pi t \cosech \pi t 
  }
}


\section{Lognormal Distribution}{
  For the probability density function, see \code{\link{dlnorm}}.

  This characteristic function is uniquely complicated and delicate, but
  there is a recent numerical algorithm for computation due to Beaulieu
  (2008).  See the vignette and the References.
}


\section{Negative Binomial Distribution}{
  For the probability mass function, see \code{\link{dnbinom}}.

  The characteristic function is given by
  \deqn{ \phi(t) = (p/(1-(1-p)*e^{it}))^{r} }{
    phi(t) = [p/(1-(1-p)*e^(it))]^r 
  }
}


\section{Normal Distribution}{
  For the probability density function, see \code{\link{dnorm}}.

  The characteristic function is
  \deqn{ \phi (t) = e^{i\mu t + t^{2} \sigma^{2} /2} }{
    phi(t) = e^(i*mu*t + t^2 * sigma^2 /2) }
}


\section{Poisson Distribution}{
  For the probability mass function, see \code{\link{dpois}}.

  The characteristic function is
  \deqn{
    \phi (t) = e^{\lambda (e^{it} - 1)}
  }{
    phi(t) = e^(lambda*(e^it - 1))
  }
}

\section{Wilcoxon Sign Rank Distribution}{
  For the probability density function, see \code{\link{dsignrank}}.

  The characteristic function is calculated according to the definition.
}

\section{Student's t Distribution}{
  For the probability density function, see \code{\link{dt}}.

  See the vignette for a formula for the characteristic function for central t.
  
  As of the time of this writing, we must calculate the characteristic function
  of the noncentral t with numerical integration according to the definition.
}


\section{Continuous Uniform Distribution}{
  For the probability density function, see \code{\link{dunif}}.

  The characteristic function is
  \deqn{
    \phi (t) = \frac{e^{itb} - e^{ita}}{(b - a)it}
  }{
    phi(t) = \frac{e^(itb) - e^(ita)}{(b - a)it}
  }
}

\section{Weibull Distribution}{
  For the probability density function, see \code{\link{dweibull}}.

  We must at the time of this writing calculate the characteristic function
  with numerical integration according to the definition.
}

\section{Wilcoxon Rank Sum Distribution}{
  For the probability density function, see \code{\link{dwilcox}}.

  The characteristic function is calculated according to the definition.
}

\source{
  For \code{clnorm} a fast numerical algorithm is used that originated with and was
  published and communicated to me by N. C. Beaulieu: see

}

\references{
  Abramowitz, M. and Stegun, I. A. (1972)
  \emph{Handbook of Mathematical Functions.} New York: Dover.  

  Beaulieu, N.C. (2008) Fast convenient numerical computation of
  lognormal characteristic functions, IEEE Transactions on Communications,
  Volume \bold{56},  Issue 3, 331--333.
  
  Hurst, S. (1995) The Characteristic Function of the Student-t
  Distribution, Financial Mathematics Research Report No. FMRR006-95,
  Statistics Research Report No. SRR044-95.

  Johnson, N. L., Kotz, S., and Kemp, A. W. (1992)
  \emph{Univariate Discrete Distributions},
  Second Edition. New York: Wiley.

  Johnson, N. L., Kotz, S. and Balakrishnan, N. (1995)
  \emph{Continuous Univariate Distributions}, volume 1.
  New York: Wiley.
  
  Johnson, N. L., Kotz, S. and Balakrishnan, N. (1995)
  \emph{Continuous Univariate Distributions}, volume 2. 
  New York: Wiley.
  
  Lukacs, E. (1970)
  \emph{Characteristic Functions},
  Second Edition. London: Griffin.
}

\author{G. Jay Kerns \email{gkerns@ysu.edu}.}

\seealso{
  \code{\link{besselK}}
  \code{\link[fAsianOptions]{kummerM}} 
  \code{\link[fAsianOptions]{kummerU}}
  \code{\link[hypergeo]{hypergeo}} 
}

\keyword{distribution}
