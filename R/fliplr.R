###
### $Id: fliplr.R 29 2022-05-30 23:02:22Z proebuck $
###
### Flip matrices left-right.
###


##-----------------------------------------------------------------------------
setGeneric("fliplr",
           function(object) {
               #cat("generic", match.call()[[1]], "\n")
               standardGeneric("fliplr")
           })

setMethod("fliplr",
          signature(object = "vector"),
          function(object) {
              #cat(match.call()[[1]], "(vector)", "\n")
              rev(object)
           })

setMethod("fliplr",
          signature(object = "matrix"),
          function(object) {
              #cat(match.call()[[1]], "(matrix)", "\n")
              n <- matlab::size(object)[2]
              object[, n:1]
           })

setMethod("fliplr",
          signature(object = "array"),
          function(object) {
              #cat(match.call()[[1]], "(array)", "\n")
              stop(sprintf("argument %s must be vector or matrix",
                           sQuote("object")))
           })

setMethod("fliplr",
          signature(object = "ANY"),
          function(object) {
              #cat(match.call()[[1]], "(ANY)", "\n")
              stop(sprintf("method not defined for %s argument",
                           data.class(object)))
           })

setMethod("fliplr",
          signature(object = "missing"),
          function(object) {
              #cat(match.call()[[1]], "(missing)", "\n")
              stop(sprintf("argument %s missing", sQuote("object")))
           })

