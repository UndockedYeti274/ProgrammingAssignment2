## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#creates list containing functions to 
#1)set value of matrix,
#2)get value of matrix,
#3)set value of inverse,
#4)get value of inverse
makeCacheMatrix <- function(x = matrix()) {
                  inv <- NULL
                  set <- function(y) {
                    x <<- y
                    inv <<- NULL
                  }
                  get <- function() x
                  setInverse <- function(inverse) inv <<- inverse
                  getInverse <- function() inv
                  list(set = set, get = get,
                       setInverse = setInverse,
                       getInverse = getInverse)
}


## Write a short comment describing this function
#computes inverse of matrix stored in matrix object returned by makeCacheMatrix function and if already calculated then retrieves it from cache
cacheSolve <- function(x, ...) {
                  m <- x$getInverse()
                  if(!is.null(inv)) {
                    message("getting cached data")
                    return(inv)
                  }
                  mat <- x$get()
                  inv <- solve(mat, ...)
                  x$setInverse(inv)
                  inv
                  
        ## Return a matrix that is the inverse of 'x'
}
