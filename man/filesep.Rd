% $Id: filesep.Rd 50 2014-02-05 21:15:00Z plroebuck $

\name{filesep}
\alias{filesep}
\title{MATLAB filesep function}
\description{
  Returns the character that separates directory names in filenames.
}
\usage{
filesep
}
\details{
  Variable that contains the value of \code{.Platform$file.sep}.
}
\value{
  Returns character representing this platform's file separator.
}
\note{
  Implemented as an R variable rather than a function such that it more
  closely resembles normal MATLAB usage. 
}
\seealso{
  \code{\link{fileparts}},
  \code{\link{fullfile}},
  \code{\link{pathsep}}
}
\author{
  P. Roebuck \email{proebuck@mdanderson.org}
}
\keyword{file}

