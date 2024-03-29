###
### $Id: mod.R 22 2022-05-30 18:03:47Z proebuck $
###
### Modulus after division.
###


##-----------------------------------------------------------------------------
mod <- function(x, y) {
    ans <- x %% y
    ## Substitute x[off] in answer anywhere y[off] equals zero
    if (length(zero.off <- which(y == 0))) {
        ans[zero.off] <- if (length(x) == 1) x else x[zero.off]
    }
    ans
}

