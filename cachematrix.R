## this fuction would get us the inverse of a square matrix 
##

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  set <- function(y){
    x <<- y
    I <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) I <<- solve 
  getsolve <- function() I
  list(set = set, get = get , setsolve = setsolve, getsolve = getsolve)
}


##  This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(I)) {
    message("getting cached data")
    return(I)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmean(I)
  I
        ## Return a matrix that is the inverse of 'x'
}
