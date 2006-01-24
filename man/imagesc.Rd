\name{imagesc}
\alias{imagesc}
\title{MATLAB imagesc function}
\description{
  Scales image data to the full range of the current pallette and
  displays the image.
}
\usage{
imagesc(C, \dots)
}
\arguments{
  \item{C}{numeric matrix representing data to be plotted}
  \item{\dots}{graphical parameters for \link[graphics]{image} may also be passed
    as arguments to this method}
}
\details{
  Each element of \code{C} corresponds to a rectangular area in the image.
  The values of the elements of \code{C} are indices into the current
  \link[grDevices]{palette} that determine the color of each patch.

  The method interprets the matrix data as a table of \code{f(x[i], y[j])} values,
  so that the x axis corresponds to column number and the y axis to row number,
  with row 1 at the top, i.e., the same as the conventional printed layout
  of a matrix.
}
\seealso{
  \code{\link[graphics]{image}},
  \code{\link{jet.colors}},
  \code{\link[graphics]{par}}
}
\examples{
values <- matrix(c(seq(1,  5, by = 1),
                   seq(2, 10, by = 2),
                   seq(3, 15, by = 3)), nrow = 3, byrow = TRUE)
imagesc(values, xlab = "cols", ylab = "rows", col = jet.colors(16))
}
\author{P. Roebuck, \email{roebuck@mdanderson.org}}
\keyword{hplot}
