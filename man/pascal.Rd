% $Id: pascal.Rd 25 2022-05-30 18:46:01Z proebuck $

\name{pascal}
\alias{pascal}
\title{MATLAB pascal function}
\description{
  Generate Pascal matrix.
}
\usage{
pascal(n, k=0)
}
\arguments{
  \item{n}{numeric scalar specifying order}
  \item{k}{numeric scalar specifying desired option. Valid values
are 0, 1, or 2}
}
\details{
  Specifying \eqn{k=0} returns symmetric positive definite matrix
  with integer entries taken from Pascal's triangle.

  Specifying \eqn{k=1} returns the lower triangular Cholesky factor
  (up to the signs of the columns) of the Pascal matrix.

  Specifying \eqn{k=2} returns a cube root of the identity matrix.
}
\value{
  Returns matrix of order \code{n} according to specified option \code{k}.
}
\author{
  P. Roebuck \email{proebuck1701@gmail.com}
}
\examples{
pascal(4)
pascal(3, 2)
}
\keyword{array}

