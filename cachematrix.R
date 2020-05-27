## Put comments here that give an overall description of what your
## functions do
##As caching the inverse of a matrix is a very costly computation, let's do
##a little trick with the cache.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
}


## Write a short comment describing this function
##This function is used to create a special "matrix" object which can cache
##its inverse
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}

##cachoSolce is used to compute the inverse of the special matrix which is
##returned by makeCacheMatrix.

##So let's write the code

makeCacheMatrix <- finction (x=matrix()){
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<-NULL
  }
  get <-function () x
  setinverse <- function (inverser) inv <<- inverse
  getinverse <- function () inv
  list (set=set, get=get,
        setinv = setinv,
        getinv = getinv)
  
  ##and for cache solving
  
  cacheSolve <- function(x,...){
    m<-x$getinv()
    if (!is.null(m)){
      message("getting cached data")
      return (m)
    }
    data<-x$get()
    m<-inverse(data,...)
    x$setinv(m)
    m
  }