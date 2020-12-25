##Two function makeCacheMatrix and CacheSolve
##makeCacheMatrix consists of setInv & getInv

makeCacheMatrix <- function( x = matrix()) {
  inv <- NULL
  set <- function(y){
    X <<- y
    inv <<- NULL
  }
  get <- fucntion () x
  setInv <- function(inverse) inv <<- inverse
  getInv <- function() inv
  list (set = set, get = get, setInv = setInv, getInv = getInv)
}

## This is the function to get cache data
cacheSolve <- function(x, ...) {
  inv <- X$getInv()
  if(!is.null(inv)) {
    message ("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve (mat,... )
  X$setInv(inv)
  inv
}
