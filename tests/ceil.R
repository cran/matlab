###
### $Id: ceil.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.ceil <- function(input, expected) {
    output <- do.call(getFromNamespace("ceil", "matlab"), input)
    identical(output, expected)
}

X <- c(-1.9, -0.2, 3.4, 5.6, 7)
ceil.expected <- c(-1, 0, 4, 6, 7)

test.ceil(list(X), ceil.expected)

