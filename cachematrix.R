## @csimokat for R Programming Coursera - Programming Assignment 2
## R program contains a pair of functions used to cache the inverse of a matrix
## Program assumes inputted matrix is invertible


## First function makeCacheMatrix
## Creates special "matrix" object that is the cached inverse of the matrix
## Contains "getter" and "setter" functions for the cached inverse object

makeCacheMatrix <- function(x = matrix()) {
  # Inverse starts as null
  i <- NULL
  
  # Setter
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  # Getter
  get <- function() x
  
  # Accessors
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  
  # Return the object
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Second function cacheSolve
## Accepts as input the cached inverse matrix object from the first function
## If the cache is empty it calculates, sets, and returns the value
## if the cache is non-empty it accesses and returns the value

cacheSolve <- function(x, ...) {
  
  # Get the inverse from the cache object
  i <- x$getinverse()
  
  # Is it empty? If not return the cached value.
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  # Must be empty. Calculate inverse, set, and return.
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  ## Return a matrix that is the inverse of 'x'
  i
}