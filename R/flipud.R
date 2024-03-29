###
### $Id: flipud.R 29 2022-05-30 23:02:22Z proebuck $
###
### Flip matrices up-down.
###


##-----------------------------------------------------------------------------
setGeneric("flipud",
           function(object) {
               #cat("generic", match.call()[[1]], "\n")
               standardGeneric("flipud")
           })

setMethod("flipud",
          signature(object = "vector"),
          function(object) {
              #cat(match.call()[[1]], "(vector)", "\n")
              rev(object)
          })

setMethod("flipud",
          signature(object = "matrix"),
          function(object) {
              #cat(match.call()[[1]], "(matrix)", "\n")
              m <- matlab::size(object)[1]
              object[m:1, ]
          })

setMethod("flipud",
          signature(object = "array"),
          function(object) {
              #cat(match.call()[[1]], "(array)", "\n")
              stop(sprintf("argument %s must be vector or matrix",
                           sQuote("object")))
          })

setMethod("flipud",
          signature(object = "ANY"),
          function(object) {
              #cat(match.call()[[1]], "(ANY)", "\n")
              stop(sprintf("method not defined for %s argument",
                           data.class(object)))
          })

setMethod("flipud",
          signature(object = "missing"),
          function(object) {
              #cat(match.call()[[1]], "(missing)", "\n")
              stop(sprintf("argument %s missing", sQuote("object")))
          })

