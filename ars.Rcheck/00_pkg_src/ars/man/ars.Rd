% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ars.R
\name{ars}
\alias{ars}
\title{A function that returns samples from unnormalized density based on reject sampling}
\usage{
ars(n, g, k = 30, left = -Inf, right = Inf, stepsize = 10)
}
\arguments{
\item{n}{a numeric value as sample size.}

\item{g}{a log-concave function.}

\item{k}{a numeric value as the max size of initial abscissae.}

\item{left}{a numeric value as the left bound of input h; default is -Inf.}

\item{right}{a numeric value as the right bound of input h; default is Inf.}

\item{stepsize}{an integer that indicates the number of samples generated in the first iteration of sampling;
it increases along iterations at a predetermined rate 1.1.}
}
\value{
a numeric vector of length n that was sampled from the normalized density function d.
}
\description{
A function that returns samples from unnormalized density based on reject sampling
}
\examples{
ars(n = 1000, g = dnorm)
}

