###
### $Id: numel.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.numel <- function(input, expected) {
    output <- do.call(getFromNamespace("numel", "matlab"), input)
    identical(output, expected)
}

a <- array(NA, c(4, 4, 2))
a[,,1] <- matlab::magic(4)
a[,,2] <- t(a[,,1])

numel.expected.4x4x2 <- 32

test.numel(list(A = a), numel.expected.4x4x2)

