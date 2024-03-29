###
### $Id: ones.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.ones <- function(input, expected) {
    output <- do.call(getFromNamespace("ones", "matlab"), input)
    identical(output, expected)
}

ones.expected.3x3 <- matrix(1, nrow = 3, ncol = 3)
ones.expected.4x2 <- matrix(1, nrow = 4, ncol = 2)

test.ones(list(n = 3), ones.expected.3x3)
test.ones(list(n = c(4, 2)), ones.expected.4x2)
test.ones(list(m = 4, n = 2), ones.expected.4x2)
test.ones(list(n = matlab::size(ones.expected.4x2)), ones.expected.4x2)

