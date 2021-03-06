% $Id: rosser.Rd 50 2014-02-05 21:15:00Z plroebuck $

\name{rosser}
\alias{rosser}
\title{MATLAB rosser function}
\description{
  Create the Rosser matrix, a classic symmetric eigenvalue test problem.
}
\usage{
rosser()
}
\details{
  The returned matrix has the following features:
  \itemize{
    \item{a double eigenvalue}
    \item{three nearly equal eigenvalues}
    \item{dominant eigenvalues of opposite sign}
    \item{a zero eigenvalue}
    \item{a small, nonzero eigenvalue}
  }
}
\value{
  Returns an \code{8}-by-\code{8} matrix with integer elements.
}
\examples{
rosser()
}
\author{
  P. Roebuck \email{proebuck@mdanderson.org}
}
\keyword{array}

