###
### PASCAL.R
###

test.pascal <- function(input, expected) {
    if (length(input) == 1) {
        identical(matlab::pascal(input$n), expected)
    } else {
        identical(matlab::pascal(input$n, input$k), expected)
    }
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
