###
### $Id: std.R 29 2022-05-30 23:02:22Z proebuck $
###
### Standard deviation.
###


##-----------------------------------------------------------------------------
std <- function(x, flag = 0) {
    if (flag != 0) {
        stop("biased standard deviation not implemented")
    }

    sd(x)
}

