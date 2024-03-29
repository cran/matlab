###
### $Id: tictoc.R 29 2022-05-30 23:02:22Z proebuck $
###
### Stopwatch timer.
###


##-----------------------------------------------------------------------------
tic <- function(gcFirst = FALSE) {
    if (gcFirst == TRUE) {
        gc(verbose = FALSE)
    }
    assign("savedTime", proc.time()[3], envir = .MatlabNamespaceEnv)
    invisible()
}


##-----------------------------------------------------------------------------
toc <- function(echo = TRUE) {
    prevTime <- get("savedTime", envir = .MatlabNamespaceEnv)
    diffTimeSecs <- proc.time()[3] - prevTime
    if (echo) {
        cat(sprintf("elapsed time is %f seconds", diffTimeSecs), "\n")
        invisible()
    } else {
        diffTimeSecs
    }
}

