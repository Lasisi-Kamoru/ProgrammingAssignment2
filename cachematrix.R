## Put comments here that give an overall description of what your
## functions do
## My functions calculate the inverse of a square matrix.

## Write a short comment describing this function
##This function below is used to lunch the original matrix that it's inverse is required.


makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function
##The function below produces the required inverse matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
## Below is my complete R codes for the programming assignment: 
makeCachematrix<-function(x=matrix()){
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
    
  }
  get<-function(){x}
  setInverse<-function(inverse){inv<<-inverse}
  getInverse<-function(){inv}
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}
Cachesolve<-function(x, ...){
  inv<-x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat<-x$get()
  inv<-solve(mat, ...)
  x$setInverse(inv)
  inv
}
pmatrix<-makeCachematrix(matrix(10:13,nrow=2,ncol=2))
pmatrix$get()
Cachesolve(pmatrix)
pmatrix$getInverse()
##Example 2
pmatrix<-makeCachematrix(matrix(5:8,nrow=2,ncol=2))
pmatrix$get()
Cachesolve(pmatrix)
pmatrix$getInverse()
