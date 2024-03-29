###
### $Id: reshape.R 29 2022-05-30 23:02:22Z proebuck $
###
### Reshape matrix or array.
###


##-----------------------------------------------------------------------------
reshape <- function(A, ...) {
    if (!is.array(A)) {
        stop(sprintf("argument %s must be matrix or array", sQuote("A")))
    }

    nargs <- length(dots <- list(...))
    dims <- as.integer(if (nargs == 1 && is.size_t(dots[[1]])) {
                           dots[[1]]
                       } else {
                           unlist(dots)
                       })

    if (!(length(dims) > 1)) {
        stop("dimensions must be of length greater than 1")
    } else if (!(all(dims > 0))) {
        stop("dimensions must be a positive quantity")
    } else if (prod(dims) != prod(dim(A))) {
        stop("number of elements must not change")
    }

    array(as.vector(A), dims)
}

