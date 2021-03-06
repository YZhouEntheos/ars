% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/findInitAbsc.R
\name{findMode}
\alias{findMode}
\title{A function that returns the mode of a function}
\usage{
findMode(g, left = -Inf, right = Inf, c = 3)
}
\arguments{
\item{g}{a log-concave function.}

\item{left}{a numeric value that indicates the left bound for domain of function g;
default value is -Inf}

\item{right}{a numeric value that indicates the right bound for domain of function g;
default value is Inf}

\item{c}{a numeric value by which we shift the finite bound to find initial value for the
optim function; default value is 3}
}
\value{
mode a numeric value that is the mode of the function h=log(g)
}
\description{
A function that returns the mode of a function
}
\examples{
# Normal distribution
 g <- function(x){
   return(dnorm(x, mean=3, sd=2))
 }
 findMode(g)

 # Chi-square distribution
 g <- function(x){
   return(dchisq(x, 10, ncp=3))
 }
 findMode(g,3)

 # Uniform distribution
 g <- function(x){
   return(dunif(x, min=2, max=5))
 }
 findMode(g,2,5)

 # Piecewise constant distribution
 h <- function(x){
   a <- sapply(x,function(x){if(x<1) return (x)
     else if(x>=1 & x <=2) return (1)
     else if(x>2) return (-x+3)})
   return (a)
 }
 g <- function(x){
   return(exp(h(x)))
 }
 findMode(g)
}

