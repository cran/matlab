% $Id: fileparts.Rd 25 2022-05-30 18:46:01Z proebuck $

\name{fileparts}
\alias{fileparts}
\title{MATLAB fileparts function}
\description{
  Return filename parts.
}
\usage{
fileparts(pathname)
}
\arguments{
  \item{pathname}{character string representing pathname to be parsed}
}
\details{
  Determines the path, filename, extension, and version for the specified file.
  The returned \code{ext} contains a dot (.) before the file extension.
  The returned \code{versn} is always an empty string as the field is provided
  for compatibility with its namesake's results.
}
\value{
  Returns a list with components:
    \item{pathstr}{character string representing directory path}
    \item{name}{character string representing base of file name}
    \item{ext}{character string representing file extension}
    \item{versn}{character string representing version. Unused}
}
\note{
  Returns same insane results as does its namesake when handling relative
  directories, UNIX hidden files, and tilde expansion. Hidden files are
  returned with \code{name} containing a zero length vector and \code{ext}
  containing the actual name.
  For best results, use this routine to process files, not directories.
}
\author{
  P. Roebuck \email{proebuck1701@gmail.com}
}
\seealso{
  \code{\link{fullfile}}
}
\examples{
## Rename dot-txt file as dot-csv
ans <- fileparts("/home/luser/foo.txt")
fullfile(ans$pathstr, paste(ans$name, "csv", sep="."))   # /home/luser/foo.csv
}
\keyword{file}

