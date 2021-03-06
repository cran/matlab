% $Id: find.Rd 50 2014-02-05 21:15:00Z plroebuck $

\name{find}
\alias{find}
\title{MATLAB find function}
\description{
  Finds indices of elements.
}
\usage{
find(x)
}
\arguments{
  \item{x}{expression to evaluate}
}
\details{
  If expression is not logical, finds indices of nonzero elements of
  argument \code{x}.
}
\value{
  Returns indices of corresponding elements matching the expression \code{x}.
}
\examples{
find(-3:3 >= 0)
find(c(0, 1, 0, 2, 3))
}
\author{
  P. Roebuck \email{proebuck@mdanderson.org}
}
\keyword{logic}
\keyword{attribute}

