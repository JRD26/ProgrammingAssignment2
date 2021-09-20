
## Your assignment is to write a pair of functions that cache the inverse of a matrix. ##

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse. ##

makeCacheMatrix <- function(a = matrix()) {
  inv <- NULL
  set <- function(b){ ## Set the value of the matrix ##
    a <<- b
    inv <<- NULL
  }
  get <- function() {a}  ## Get the value of the matrix ##
  set_Inverse <- function(inverse) {inv <<- inverse} ## Set the value of the Inverse ##
  get_Inverse <- function() {inv} ## Get the value of the Inverse ##
  list(set = set, get = get, set_Inverse = set_Inverse, get_Inverse = get_Inverse)
}

## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.  ##
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache. ##

cacheSolve <- function(a, ...) {
  inv <- a$get_Inverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  matrix <- a$get()
  inv <- solve(matrix, ...)
  a$set_Inverse(inv)
  inv 
}
