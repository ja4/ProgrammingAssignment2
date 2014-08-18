## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## return list of function set, get, setinverse & getinverse
  mat_inv <- NULL
  set <- function(y){
    x <<- y
    mat_inv <<- NULL
  }
  get <- function(){
    x
  } 
  setinverse <- function(inverse) mat_inv <<- inverse 
  getinverse <- function() mat_inv
  list(set = set,get = get,setinverse = setinverse,getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'inv'
  inv <- x$getinverse()
  
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
