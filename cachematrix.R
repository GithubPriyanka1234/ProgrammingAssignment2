## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# makeCacheMatrix creates a list containing a function to (1) set the matrix value, (2) get the matrix value
#(3)set the inverse matrix, and (4) get the value of of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y){
x <<- y
m <<-NULL
}
get <- function()x
setinv <- function(inverse)m<<-inverse
getinv <-function()m
list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function
#The following function returns the inverse matrix and check to if the value has been computed.
#If the value has been computed it gets the result and skips the computation.Otherwise, it computes the inverse and sets the value in the cache


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getinv()
if(!is.null(m)) 
{
message("getting cached data")
return(m)
}
data <- x$get()
m <- solve(data)
x$setinv(m)
m
}
