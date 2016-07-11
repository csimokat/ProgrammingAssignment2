## @csimokat
## Test matrix multiplication
x <- matrix(c(1,2,3,4),2,2)
x
solve(x)
x*solve(x) # Not matrix multiplication
x%*%solve(x) # Matrix multiplication -- verified solve creates inverse product is identity
rm(list = ls())

## Test example functions
source("example.R")
x <- 1:15
y <- makeVector(x)
z <- cachemean(y)
z
z
rm(list = ls())

## Test programming assignment functions
source("cachematrix.R")
x <- matrix(c(1,2,3,4),2,2)
y <- makeCacheMatrix(x)
z <- cacheSolve(y)
z
rm(list = ls())