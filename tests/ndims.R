###
### $Id: ndims.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.ndims <- function(input, expected) {
    output <- do.call(getFromNamespace("ndims", "matlab"), input)
    identical(output, expected)
}

test.ndims(list(A = array(NA, c(4, 4, 2))), 3)
test.ndims(list(A = matlab::magic(4)), 2)
test.ndims(list(A = 1:5), 2)

