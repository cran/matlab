###
### $Id: mod.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.mod <- function(input, expected) {
    output <- do.call(getFromNamespace("mod", "matlab"), input)
    identical(output, expected)
}

mod.expected.scalar <- 3
mod.expected.vec <- c(1, 2, 0, 1, 2)

test.mod(list(x = 13, y = 5), mod.expected.scalar)
test.mod(list(x = 1:5, y = 3), mod.expected.vec)

## by convention
any.nonzero <- 1
test.mod(list(x = any.nonzero, y = 0), any.nonzero)   ## HWB 2011/03/08
test.mod(list(x = any.nonzero, y = any.nonzero), 0)

## get complicated
test.mod(list(x = 5, y = c(1, 2, 0, NaN, Inf)), c(0, 1, 5, NaN, NaN))
test.mod(list(x = 1:5, y = c(1, 2, 0, NaN, Inf)), c(0, 0, 3, NaN, NaN))

## rem & mod give same results with X, Y having same sign
test.mod(list(x = 5, y = 3), matlab::rem(5, 3))
test.mod(list(x = -5, y = -3), matlab::rem(-5, -3))

## alternate formula used when X, Y having different signs
test.mod(list(x = 5, y = -3), (matlab::rem(5, -3) - -3))
test.mod(list(x = -5, y = 3), (matlab::rem(-5, 3) - 3))

