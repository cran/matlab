% $Id: ndims.Rd 50 2014-02-05 21:15:00Z plroebuck $

\name{ndims}
\alias{ndims}
\title{MATLAB ndims function}
\description{
  Provides number of array dimensions.
}
\usage{
ndims(A)
}
\arguments{
  \item{A}{object of which to determine the number of dimensions}
}
\details{
  Simply invokes \code{\link[base]{length}(\link{size}(A))}.
}
\value{
  Returns the number of dimensions in the array \code{A}.
}
\seealso{
  \code{\link{size}}
}
\note{
  The number of dimensions is always greater than or equal to 2.
  Initial implementation returned \code{\link[base]{length}}.
}
\examples{
ndims(2:9)			# 2
ndims(magic(4))			# 2
ndims(array(1:8, c(2,2,2)))	# 3
}
\author{
  P. Roebuck \email{proebuck@mdanderson.org}
}
\keyword{array}

