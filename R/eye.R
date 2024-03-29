###
### $Id: eye.R 29 2022-05-30 23:02:22Z proebuck $
###
### Create an identity matrix.
###


##-----------------------------------------------------------------------------
eye <- function(m, n) {
    if (is.size_t(m)) {
        m <- as.integer(m)
    }

    if (missing(n)) {
        len.m <- length(m)
        if (len.m == 1) {
            n <- m
        } else if (len.m > 1) {
            n <- m[-1]
            m <- m[1]
        }
    }

    if (!is.numeric(n)) {
        stop(sprintf("argument %s must be numeric", sQuote("n")))
    } else if (!(length(n) == 1)) {
        stop(sprintf("argument %s must be of length 1", sQuote("n")))
    } else if (!(n > 0)) {
        stop(sprintf("argument %s must be a positive quantity", sQuote("n")))
    }

    if (!is.numeric(m)) {
        stop(sprintf("argument %s must be numeric", sQuote("m")))
    } else if (!(length(m) == 1)) {
        stop(sprintf("argument %s must be of length 1", sQuote("m")))
    } else if (!(m > 0)) {
        stop(sprintf("argument %s must be a positive quantity", sQuote("m")))
    }

    diag(1, m, n)
}

