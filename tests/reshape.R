###
### $Id: reshape.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.reshape <- function(input, expected, drop = FALSE) {
    ans <- do.call(getFromNamespace("reshape", "matlab"), input)
    output <- if (drop) {
                  drop(ans)
              } else {
                  ans
              }
    identical(output, expected)
}

Xmat.4x3 <- matrix(1:12, nrow = 4, ncol = 3)
reshape.expected.mat6x2 <- matrix(1:12, nrow = 6, ncol = 2)

test.reshape(list(A = Xmat.4x3, m = 6, n = 2), reshape.expected.mat6x2)
test.reshape(list(A = Xmat.4x3, m = 6, n = 2, p = 1),
             reshape.expected.mat6x2, drop = TRUE)
test.reshape(list(A = Xmat.4x3, c(6, 2)), reshape.expected.mat6x2)
test.reshape(list(A = Xmat.4x3, matlab::size(reshape.expected.mat6x2)),
             reshape.expected.mat6x2)

