## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##this returns a list of functions used to store and save matrix and its inverse
makeCacheMatrix <- function(matr = matrix()) {
    inverse1 <- NULL
    set <- function(y) {
      matr <<- y
      inverse1 <<- NULL
    }
    get <- function() matr
    setinverse <- function(inverin) inverse1 <<- inverin
    getinverse <- function() inverse1
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }
  


## Write a short comment describing this function
## this returns the cached inverse or else it calcs the inverse and returns it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inverse1 <- x$getinverse()
  if(!is.null(inverse1)) {
    message("getting cached data")
    return(inverse1)
  }
  matrix1 <- x$get()
  inverse1 <- solve(matrix1)
  x$setinverse(inverse1)
  inverse1
  
}
