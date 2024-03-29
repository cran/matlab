###
### $Id: pascal.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.pascal <- function(input, expected) {
    output <- do.call(getFromNamespace("pascal", "matlab"), input)
    identical(output, expected)
}

pascal.expected.n4 <- matrix(c(1,  1,  1,  1,
                               1,  2,  3,  4,
                               1,  3,  6, 10,
                               1,  4, 10, 20), 4, byrow = TRUE)
test.pascal(list(n = 4), pascal.expected.n4)

pascal.expected.n3k1 <- matrix(c(1,  0,  0,
                                 1, -1,  0,
                                 1, -2,  1), 3, byrow = TRUE)
test.pascal(list(n = 3, k = 1), pascal.expected.n3k1)

pascal.expected.n3k2 <- matrix(c(1,  1,  1,
                                -2, -1,  0,
                                 1,  0,  0), 3, byrow = TRUE)
test.pascal(list(n = 3, k = 2), pascal.expected.n3k2)

