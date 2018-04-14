## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The below function is used to set and get the matrix ,inverse of a matrix values.

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set <- function(y){
    x<<- y
    m<<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  getmean <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inverse <- x$getInverse()
	if(!is.null(inverse)){
	 print("Getting inverse of a matrix data from cache")
	 return(inverse)
	}
    data <- x$get()
    inverse <- solve(data,...)
    x$setInverse(inverse)
    inverse
}
