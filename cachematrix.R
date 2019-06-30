## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL;
        set <- function(y) {
                x <<- y;
                inv <<- NULL;
        }
        get <- function(){
                x;
        }
        set_inv <- function(inverse){
                inv <<- inverse;
        }
        get_inv <- function(){
                inv;
        }
        list(set = set, get = get, set_inv = set_inv, get_inv = get_inv);
}


## Write a short comment describing this function

cacheSolve <- function(x) {
        inv_matrix <- x$get_inv();
        if(!is.null(inv_matrix)){
                message("getting cached data")
                return(inv_matrix);
        }
        new_matrix = x$get();
        inv_matrix <- solve(new_matrix);
        x$set_inv(inv_matrix);
        inv_matrix;
}
