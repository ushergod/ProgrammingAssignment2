## Put comments here that give an overall description of what your
## functions do
# there are tow functions for this assignment. The two functions can cache the matix
# so that we don't need to cpompute every time
## Write a short comment describing this function
# make a matirx
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get<-function() x 
  setinverse <- function(inversed) m <<- inversed
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
# we inverse the matrix, and cathe them in order to get it next time.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
  
}

