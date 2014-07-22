cacheSolve <- function(x, ...) {
  invValue <- x$getInvValue()
  if(!is.null(invValue)) {
    message("getting cached data")
    return(invValue)
  }
  data <- x$get()
  invValue <- solve(data, ...)
  x$setInvValue(invValue)
  invValue
}