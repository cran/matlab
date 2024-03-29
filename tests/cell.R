###
### $Id: cell.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.cell <- function(input, expected) {
    output <- do.call(getFromNamespace("cell", "matlab"), input)
    identical(output, expected)
}

cell.expected.2x2 <- list()
length(cell.expected.2x2) <- prod(dims <- c(2, 2))
dim(cell.expected.2x2) <- dims

cell.expected.4x2 <- list()
length(cell.expected.4x2) <- prod(dims <- c(4, 2))
dim(cell.expected.4x2) <- dims

test.cell(list(n = 2), cell.expected.2x2)
test.cell(list(n = c(4, 2)), cell.expected.4x2)
test.cell(list(n = 4, m = 2), cell.expected.4x2)
test.cell(list(n = matlab::size(matlab::ones(2))), cell.expected.2x2)

