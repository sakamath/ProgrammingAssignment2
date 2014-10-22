## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	mtr <- NULL
	set <- function(y){
		x << -y
		mtr <<-NULL
	}
	get<-function() x
	setmatrix<-function(solve) mtr <<- solve
	getmatrix<-function() mtr
	list(set=set, get=get,
	setmatrix=setmatrix,
	getmatrix=getmatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	mtr <- x$getmatrix()
	if(!is.null(mtr)){
		message("getting cached data")
		return(mtr)
	}
	matrix <- x$get()
	mtr <- solve(matrix, ...)
	x$setmatrix(mtr)
	mtr        
}
