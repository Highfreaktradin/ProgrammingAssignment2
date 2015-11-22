## Put comments here that give an overall description of what your
## functions do

## There was a lot of confusion regarding the instructions to this assignment. 
## I misundestood the instructions and thought the 'makevector' & 'cachemean' were supposed to be used
## as part of the solution.
## The EUREKA! moment hit when I realized that they were only examples and that the solution involved 
## just substituting 'matrix' for 'vector' and 'solve' for 'mean'

## Write a short comment describing this function
## Function to cache the inverse matrix
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) i <<- inverse
        getInverse <- function() i
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

## Write a short comment describing this function
## Function that solves(inverts) the matrix
cacheSolve <- function(x, ...) {
                i <- x$getInverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setInverse(i)
        i
}
