###
### $Id: nextpow2.R 29 2022-05-30 23:02:22Z proebuck $
###
### Next higher power of 2.
###


##-----------------------------------------------------------------------------
nextpow2 <- function(x) {
    if (!(is.numeric(x) || is.complex(x))) {
        stop(sprintf("argument %s must be numeric or complex",
                     sQuote('x')))
    }

    if (length(x) == 0) {
        return(numeric(0))
    }

    x[x == 0] <- 1
    ceiling(log2(abs(x)))
}

