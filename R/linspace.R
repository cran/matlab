###
### $Id: linspace.R 22 2022-05-30 18:03:47Z proebuck $
###
### Generate linearly spaced vectors.
###


##-----------------------------------------------------------------------------
linspace <- function(a, b, n = 100) {
    if (!is.numeric(a)) {
        stop(sprintf("argument %s must be numeric", sQuote("a")))
    } else if (!(length(a) == 1)) {
        stop(sprintf("argument %s must be of length 1", sQuote("a")))
    } 

    if (!is.numeric(b)) {
        stop(sprintf("argument %s must be numeric", sQuote("b")))
    } else if (!(length(b) == 1)) {
        stop(sprintf("argument %s must be of length 1", sQuote("b")))
    }

    if (!is.numeric(n)) {
        stop(sprintf("argument %s must be numeric", sQuote("n")))
    } else if (!(length(n) == 1)) {
        stop(sprintf("argument %s must be of length 1", sQuote("n")))
    }   

    n <- floor(n)    ## Undocumented but required
    if (n < 2) {
        b
    } else {
        seq(a, b, length = n)
    }
}

