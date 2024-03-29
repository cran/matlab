###
### $Id: multiline.plot.colors.R 29 2022-05-30 23:02:22Z proebuck $
###
### Create a vector of colors equivalent to MATLAB's default colors to use
### for multiline plots.
###


##-----------------------------------------------------------------------------
multiline.plot.colors <- function() {
    get.gca.colororder <- function() {
        colors <- c(rgb(0.00, 0.00, 1.00),    # blue
                    rgb(0.00, 0.50, 0.00),
                    rgb(1.00, 0.00, 0.00),    # red
                    rgb(0.00, 0.75, 0.75),
                    rgb(0.75, 0.00, 0.75),
                    rgb(0.75, 0.75, 0.00),
                    rgb(0.25, 0.25, 0.25))    # grey25
        i.named.colors <- c(1, 3, 7)
        names(colors)[i.named.colors] <- c("blue", "red", "grey25")
        names(colors)[-i.named.colors] <- ""

        colors
    }

    get.gca.colororder()
}

