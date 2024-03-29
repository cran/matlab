###
### $Id: size_t-class.R 29 2022-05-30 23:02:22Z proebuck $
###
### Size class.
###


##-----------------------------------------------------------------------------
setClass("size_t",
         contains = "integer",
         prototype = as.integer(0))


##-----------------------------------------------------------------------------
size_t <- function(x) {
    new("size_t", as.integer(x))
}


##-----------------------------------------------------------------------------
is.size_t <- function(object) {
    data.class(object) == "size_t"
}


##-----------------------------------------------------------------------------
as.size_t <- function(object) {
    size_t(object)
}

