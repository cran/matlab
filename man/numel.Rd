% $Id: numel.Rd 50 2014-02-05 21:15:00Z plroebuck $

\name{numel}
\alias{numel}
\title{MATLAB numel function}
\description{
  Provides number of elements in array \code{A} or subscripted array expression.
}
\usage{
numel(A, varargin)
}
\arguments{
  \item{A}{object of which to determine the number of elements}
  \item{varargin}{unimplemented}
}
\value{
  Returns \code{prod(size(A))}.
}
\seealso{
  \code{\link[base]{prod}},
  \code{\link{size}}
}
\examples{
numel(2:9)	# 8
numel(magic(4))	# 16
}
\author{
  P. Roebuck \email{proebuck@mdanderson.org}
}
\keyword{array}

