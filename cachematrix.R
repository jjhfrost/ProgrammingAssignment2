## Caching the Inverse of a Matrix
## 

## function list for the matrix
## 1.set the value of the matrix
## 2.get the value of the matrix
## 3.set the value of the inverse
## 4.get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
## set the value of the matrix
  set <- function(y) {
    x <<- y
    i <<- NULL
  }

## get the value of the matrix
  get <-function() x

## set the value of the inverse
  setinverse <- function(inverse) i <<- inverse

##get the value of the inverse
  getinverse <- function() i

  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Get the inverse of a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  i <- x$getinverse()
  
## If the inverse has already been calculated,
## then retrieve the inverse from the cache.
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }

## calculate the inverse of the matrix
  m <- x$get()
  i <-solve(m, ...)

## cache the inverse
  x$setinverse(i)
  i
}
