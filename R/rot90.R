#
# ROT90.R - Rotates matrix counterclockwise k*90 degrees
#


##-----------------------------------------------------------------------------
rot90 <- function(A, k = 1) {
    if (!(is.matrix(A))) {
        stop('Argument "A" must be a 2-D matrix.');
    }

    if (!(length(k) == 1)) {
        stop('Argument "k" must be a scalar.');
    }

    .rot90 <- function(A) {
        n <- matlab::size(A)[2];

        A <- t(A);
        return(A[n:1,]);
    }

    .rot180 <- function(A) {
        sz <- matlab::size(A);
        m <- sz[1];
        n <- sz[2];

        return(A[m:1, n:1]);
    }

    .rot270 <- function(A) {
        m <- matlab::size(A)[1];

        return(t(A[m:1,]));
    }

    k <- matlab::rem(k,4);
    if (k <= 0) {
        k <- k + 4;
    }

    return(switch(k,
                  .rot90(A),
                  .rot180(A),
                  .rot270(A),
                  A));
}
