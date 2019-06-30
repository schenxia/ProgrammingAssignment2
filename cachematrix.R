## This function here is to create a cache matrix, with its inverse matrix

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


## This function here is to get the cached inverse matix of the input matrix; if the cached inverse matirx is NULL, compute and save the inverse;

cacheSolve <- function(x) {
        inv_matrix <- x$get_inv();
        if(!is.null(inv_matrix)){
                message("getting cached data")
                return(inv_matrix);
        }
        new_matrix <- x$get();
        inv_matrix <- solve(new_matrix);
        x$set_inv(inv_matrix);
        inv_matrix;
}
