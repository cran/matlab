###
### $Id: nextpow2.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.nextpow2 <- function(input, expected) {
    output <- do.call(getFromNamespace("nextpow2", "matlab"), input)
    identical(output, expected)
}

nextpow2.expected.0 <- 0
nextpow2.expected.vector <- c(0, 1, 2, 2, 3, 3, 3, 3, 4, 4)
nextpow2.expected.matrix <- matrix(c(0, 1, 1, 0), nrow=2, ncol=2)
nextpow2.expected.16 <- 4
nextpow2.expected.m16 <- 4
nextpow2.expected.m6 <- -19
nextpow2.expected.mq <- -2

test.nextpow2(list(x=0), nextpow2.expected.0)
test.nextpow2(list(x=1:10), nextpow2.expected.vector)
test.nextpow2(list(x=matrix(c(1i, 2i, 2+0i, 0+0i), nrow=2, ncol=2)),
              nextpow2.expected.matrix)
test.nextpow2(list(x=16), nextpow2.expected.16)
test.nextpow2(list(x=-16), nextpow2.expected.m16)
test.nextpow2(list(x=1e-6), nextpow2.expected.m6)
test.nextpow2(list(x=-0.25), nextpow2.expected.mq)

