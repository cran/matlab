% $Id: magic.Rd 25 2022-05-30 18:46:01Z proebuck $

\name{magic}
\alias{magic}
\title{MATLAB magic function}
\description{
  Create a magic square.
}
\usage{
magic(n)
}
\arguments{
  \item{n}{numeric scalar specifying dimensions for the result}
}
\details{
  The value of the characteristic sum for a magic square of order \code{n} is
  \eqn{sum(1:n^2)/n}. The order \code{n} must be a scalar greater than or
  equal to 3; otherwise, the result will be either a nonmagic square, or
  else the degenerate magic squares 1 and [].
}
\value{
  Returns an \code{n}-by-\code{n} matrix constructed from
  the integers \code{1} through \eqn{N^2} with equal row and column sums.
}
\note{
  A magic square, scaled by its magic sum, is doubly stochastic.
}
\author{
  P. Roebuck \email{proebuck1701@gmail.com}
}
\seealso{ 
  \code{\link{ones}},
  \code{\link{zeros}}
}   
\examples{
magic(3)
}
\keyword{array}

