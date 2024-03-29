###
### $Id: rot90.R 29 2022-05-30 23:02:22Z proebuck $
###
### Rotates matrix counterclockwise k*90 degrees.
###


##-----------------------------------------------------------------------------
rot90 <- function(A, k = 1) {
    if (!is.matrix(A)) {
        stop(sprintf("argument %s must be matrix", sQuote("A")))
    }

    if (!is.numeric(k)) {
        stop(sprintf("argument %s must be numeric", sQuote("k")))
    } else if (!(length(k) == 1)) {
        stop(sprintf("argument %s must be of length 1", sQuote("k")))
    }

    rot90 <- function(A) {
        n <- matlab::size(A)[2]

        A <- t(A)
        A[n:1, ]
    }

    rot180 <- function(A) {
        sz <- matlab::size(A)
        m <- sz[1]
        n <- sz[2]

        A[m:1, n:1]
    }

    rot270 <- function(A) {
        m <- matlab::size(A)[1]

        t(A[m:1, ])
    }

    k <- matlab::rem(k, 4)
    if (k <= 0) {
        k <- k + 4
    }

    switch(EXPR = k,
           rot90(A),
           rot180(A),
           rot270(A),
           A)
}

