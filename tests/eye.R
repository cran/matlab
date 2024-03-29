###
### $Id: eye.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.eye <- function(input, expected) {
    output <- do.call(getFromNamespace("eye", "matlab"), input)
    identical(output, expected)
}

eye.expected.3x3 <- matrix(c(1, 0, 0,
                             0, 1, 0,
                             0, 0, 1), nrow = 3, ncol = 3, byrow = TRUE)
eye.expected.4x2 <- matrix(c(1, 0,
                             0, 1,
                             0, 0,
                             0, 0), nrow = 4, ncol = 2, byrow = TRUE)

test.eye(list(m = 3), eye.expected.3x3)
test.eye(list(m = c(4, 2)), eye.expected.4x2)
test.eye(list(m = 4, n = 2), eye.expected.4x2)
test.eye(list(m = matlab::size(eye.expected.4x2)), eye.expected.4x2)

