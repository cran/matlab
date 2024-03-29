###
### $Id: logspace.R 22 2022-05-30 18:03:47Z proebuck $
###


##-----------------------------------------------------------------------------
test.logspace <- function(input, expected) {
    output <- do.call(getFromNamespace("logspace", "matlab"), input)
    identical(all.equal(output, 
                        expected,
                        tolerance = 0.0001),
              TRUE)
}

logspace.expected.1topi <- c(10.0000, 7.4866, 5.6050, 4.1963, 3.1416)

test.logspace(list(a = 1, b = pi, n = 5), logspace.expected.1topi)

## more rigorously this time
test.logspace(list(a = 0, b = 1, n = 0), 10)        ## HWB 2011/02/03
test.logspace(list(a = 0, b = 10, n = 1), 10^10)    ## HWB 2011/02/03
test.logspace(list(a = 0, b = 1, n = 1.5), 10)      ## HWB 2011/02/03

