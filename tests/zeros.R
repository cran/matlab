###
### $Id: zeros.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.zeros <- function(input, expected) {
    output <- do.call(getFromNamespace("zeros", "matlab"), input)
    identical(output, expected)
}

zeros.expected.3x3 <- matrix(0, nrow = 3, ncol = 3)
zeros.expected.4x2 <- matrix(0, nrow = 4, ncol = 2)

test.zeros(list(n = 3), zeros.expected.3x3)
test.zeros(list(n = c(4, 2)), zeros.expected.4x2)
test.zeros(list(m = 4, n = 2), zeros.expected.4x2)
test.zeros(list(n = matlab::size(zeros.expected.4x2)), zeros.expected.4x2)

