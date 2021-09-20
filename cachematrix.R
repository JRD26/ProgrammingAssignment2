## There are two functions presented in this script: The first one is the makeCacheMatrix and the second one is the cacheSolve. ##

## The first function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
}

## The second function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}

## Your assignment is to write a pair of functions that cache the inverse of a matrix. ##

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

cacheSolve <- function(a, ...) { ## Second function
  inv <- a$get_Inverse()
  if (!is.null(inv)) {
    message("getting cached data") ## This should be displayed after running the cacheSolve function
    return(inv)
  }
  matrix <- a$get()
  inv <- solve(matrix, ...)
  a$set_Inverse(inv)
  inv 
}
