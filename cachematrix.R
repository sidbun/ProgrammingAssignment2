## Put comments here that give an overall description of what your
## functions do

## This function has public list of functions which can be used to set values
## get values, set inverse value of a matrix and retrieve inverse values of a
## matrix. It creates an instance of a matrix passed.

makeCacheMatrix <- function(x = matrix()) {
    #Initializing the variables
    inv<-NULL

    #Method to set the values of a matrix
    setmatrix <- function(y){
        x<<-y
        inv<<-NULL
    }
    #Method to retrieve the value of a matrix
    getmatrix<-function() {
        x
    }
    #Method to set the inverse of the matrix
    setinverse<- function(vni) {
        inv<<-vni
    }
    #Method to retrieve the inverse of the matrix
    getinverse<- function(){
        inv
    }
    #Returning the methods of the function
    list(set=setmatrix, get=getmatrix, setinv=setinverse, getinv=getinverse)
}


## This function retrieves the existing value of the inverse matrix for the 
## current object 'x'. If an inverse value for the matrix doesn't exist, it 
## calculates and stores it in the variable "inv" of the instance of the object
## makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    minv<-x$getinv()
    
    if(!is.null(minv)){
        message("Displaying cached data")
        return(minv)
    }
    
    mvalue <- x$get()
    minv <- solve(mvalue)
    x$setinv(minv)
    return(minv)
}
