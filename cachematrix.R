## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(mat) {
    x <<- mat
    inv <<- NULL
  }
  
  get <- function() x
  setinverse <- function(i) inv <<- i
  getinverse <- function() inv
  
  list(set = set, get = get, 
       setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if (is.null(x$getinverse())) {
    x$setinverse(solve(x$get()))
  }
  
  x$getinverse()
}
