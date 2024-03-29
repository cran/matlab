% $Id: vander.Rd 25 2022-05-30 18:46:01Z proebuck $

\name{vander}
\alias{vander}
\title{MATLAB vander function}
\description{
  Generate Vandermonde matrix from a vector of numbers.
}
\usage{
vander(v)
}
\arguments{
  \item{v}{numeric or complex vector of values}
}
\details{
  Generates the Vandermonde matrix whose columns are powers of the vector
  \code{v} (of length \code{n}) using the formula \preformatted{
    A[i, j] = v[i]^(n-j)
}
  Used when fitting a polynomial to given points.
}
\value{
  Returns an \code{n}-by-\code{n} matrix constructed as described above.
}
\author{
  H. Borchers \email{hwborchers@googlemail.com},
  P. Roebuck \email{proebuck1701@gmail.com}
}
\examples{
vander(1:5)
}
\keyword{array}

