## This function sets the value of a matrix 
## and then alters the original matrix 
## to reflect the inverse of the original values

makeCacheMatrix <- function(x = matrix()) {
  
  ## function makeCacheMatrix sets the value of a  matrix
  
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x  
  
  ## creates the matrix from this function
  
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
  ## gets the values for the inverse matrix
}


## cacheSolve calculates the inverse of a matrix
## based on makeCacheMatrix
## It gets the matrix inverse from the cache
## it calculates the inverse of the data and sets the value 
## of the inverse in the cache with the setinverse function.

cacheSolve <- function(x, ...) {
  ## Returns a matrix that is the inverse of the matrix
  ## created with makeCacheMatrix
  
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  m
}

##
