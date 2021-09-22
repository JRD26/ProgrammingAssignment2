## There are two functions presented in this script: The first one is the makeCacheMatrix and the second one is the cacheSolve. ##

## The first function below creates a special "matrix" object that can cache its inverse. ##

makeCacheMatrix <- function(x = matrix()) { 
  ## This creates a matrix ##
}

## The second function computes the inverse of the special "matrix" returned by makeCacheMatrix above. ##

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}

## Your assignment is to write a pair of functions that cache the inverse of a matrix. ##

## R script for Programming Assignment 2: Lexical Scoping ##

## 1st function ##

makeCacheMatrix <- function(JRD = matrix()) {
  invrsvrbl <- NULL
  set1 <- function(DMSDS) {                                    ## Set the value of the matrix ##
          JRD <<- DMSDS
          invrsvrbl <<- NULL
  }
  get1 <- function() {JRD}                                    ## Get the value of the matrix ##
  set_Inverse2 <- function(inverse) {invrsvrbl <<- inverse}   ## Set the value of the Inverse ##
  get_Inverse2 <- function() {invrsvrbl}                      ## Get the value of the Inverse ##
  list(set1 = set1, get1 = get1, set_Inverse2 = set_Inverse2, get_Inverse2 = get_Inverse2)
}

## 2nd function ##

cacheSolve <- function(JRD, ...) { 
  invrsvrbl <- JRD$get_Inverse2()
  if (!is.null(invrsvrbl)) {
    message("getting cached data") ## This should be displayed after running the cacheSolve function ##
    return(invrsvrbl)
  }
  matrix <- JRD$get1()
  invrsvrbl <- solve(matrix, ...) ## To compute for the inverse of a square matrix ##
  JRD$set_Inverse2(invrsvrbl)
  invrsvrbl 
  ## Check the results ##
  ## Use 1:4 matrix ##
}
