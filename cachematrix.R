## Put comments here that give an overall description of what your
## functions do

## skeleton function that acts as a vector of functions

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  declare <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  storeinv <- function(inv) m <<- inv
  getinv <- function() m
  list(declare = declare, get = get, storeinv = storeinv, getinv = getinv)

}


## function that solves a matrix only if it cant find a cached one

cacheSolve <- function(z) {
        ## Return a matrix that is the inverse of 'x'
  l <- z$getinv()
  if(!is.null(l)) {
    message("retrieving cached inverse")
    return(m)
  }
  data <- z$get()
  l <- solve(data)
  z$storeinv(l)
  l
}
