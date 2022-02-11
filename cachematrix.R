## In this section I will do the week 3 assignment from the 'programming R' course from Coursera 


## I will write a short comment describing all the following functions

> makeCacheMatrix <- function(x = matrix()) {
+   ## as the assigment description says this function creates a special
+   ## matrix object that can cache its reverse:
+   inv <- null
+   set <- function(y){
+   x <<- y
+   inv <<- NULL
+   }
+   get <- function () x
+   setinverse <- function(inverse) inv <<- inverse
+   getinverse <- function() inv
+   list(set = set, get =get,
+   setinverse = setinverse, 
+   getinverse = getinverse)
+   
+   
+ }


## in the next section I will as the description from coursera says make a function that computes the inverse of the special matrix returned by makeCacheMatrix above.  

+   cacheSolve <- function(x, ...) {
+     ## Return a matrix that is the inverse of 'x'
+   inv <- x$getinverse()
+   if(!is.null(inv)) {
+   message("getting cached data")
+   return(inv)
+   }
+   data <- x$get()
+   inv <- solve(data, ...)
+   x$setinverse(inv)
+   inv
+   }
