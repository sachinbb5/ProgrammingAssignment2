## The below functions will allow you to create and cache an invertible matrix  
##  Then it will allow you to calculate the inverse of the matrix.

## This function will list functions to:
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
    minv <- NULL
    set <- function(y) {
      x <<- y
      minv <<- NULL
    }
    get <- function() x
    setMinverse <- function(inverse) minv <<- inverse
    getMinverse <- function() minv
    list(set = set, get = get,
         setMinverse = setMinverse,
         getMinverse = getMinverse)
  
}


## calculate the inverse of matrix

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    #create inversible matrix and 
    invMatrix = x$getMinverse()
    matrixD = x$get()
    invMatrix=solve(matrixD, ...)
    
    #set and return matrix
    x$setMinverse(invMatrix)
    
    return(invMatrix)
    
    
}
