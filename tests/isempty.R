###
### $Id: isempty.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.isempty <- function(input, expected) {
    output <- do.call(getFromNamespace("isempty", "matlab"), input)
    identical(output, expected)
}

test.isempty(list(A = 1:3), FALSE)
test.isempty(list(A = numeric(0)), TRUE)
test.isempty(list(A = matrix(NA, nrow = 2, ncol = 2)), FALSE)
test.isempty(list(A = matrix(NA, nrow = 0, ncol = 2)), TRUE)
test.isempty(list(A = array(NA, c(2, 2, 2))), FALSE)
test.isempty(list(A = array(NA, c(2, 0, 2))), TRUE)

