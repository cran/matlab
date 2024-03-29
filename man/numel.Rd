% $Id: numel.Rd 25 2022-05-30 18:46:01Z proebuck $

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
\author{
  P. Roebuck \email{proebuck1701@gmail.com}
}
\seealso{
  \code{\link[base]{prod}},
  \code{\link{size}}
}
\examples{
numel(2:9)	# 8
numel(magic(4))	# 16
}
\keyword{array}

