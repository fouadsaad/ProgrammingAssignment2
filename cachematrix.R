## The below functions are used to cache the inverse of a matrix so we dont repeatedly 
## calcualte the inverse of the same matrix


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
  


## this returns the cached inverse or else it calculates the inverse and returns it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse1 <- x$getinverse()
  if(!is.null(inverse1)) {
    message("getting cached matrix inverse")
    return(inverse1)
  }
  matrix1 <- x$get()
  inverse1 <- solve(matrix1) ## here i calc inverse if not cached
  x$setinverse(inverse1)
  inverse1
  
}
