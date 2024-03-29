% $Id: ones.Rd 25 2022-05-30 18:46:01Z proebuck $

\name{ones}
\alias{ones}
\alias{zeros}
\title{MATLAB ones/zeros functions}
\description{
  Create a matrix consisting of all ones or zeros.
}
\usage{
ones(\dots)
zeros(\dots)
}
\arguments{
  \item{\dots}{numeric dimensions for the result}
}
\value{
  Returns matrix consisting only of ones (or zeros).
  Defaults to square if dimension argument resolves to a single value.
}
\author{
  P. Roebuck \email{proebuck1701@gmail.com}
}
\seealso{ 
  \code{\link{eye}}
}   
\examples{
ones(3)
ones(c(3, 3))                   # same thing 
ones(3, 3)                      # same thing
ones(size(matrix(NA, 3, 3)))    # same thing
zeros(3)
}
\keyword{array}

