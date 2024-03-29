###
### $Id: isprime.R 29 2022-05-30 23:02:22Z proebuck $
###
### Array elements that are prime numbers.
###


##-----------------------------------------------------------------------------
isprime <- function(x) {
    if (!is.numeric(x)) {
        stop(sprintf("argument %s must be numeric", sQuote("x")))
    }

    if (length(x) == 0) {
        return(integer(0))
    }

    if (any(x < 0)) {
        stop(sprintf("each element of %s must be a nonnegative quantity",
                     sQuote("x")))
    } else if (any(x != round(x))) {
        stop(sprintf("each element of %s must be a non-fractional quantity",
                     sQuote("x")))
    }

    as.integer(x %in% matlab::primes(max(x)))
}

