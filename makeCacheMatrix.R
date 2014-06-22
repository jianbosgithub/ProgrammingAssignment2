makeCacheMatrix <- function(x = matrix()) {
  invValue <- NULL
  set <- function(y) {
    x <<- y
    invValue <<- NULL
  }
  get <- function() x
  setInvValue <- function(invV) invValue <<- invV
  getInvValue <- function() invValue
  list(set = set, get = get,
       setInvValue = setInvValue,
       getInvValue = getInvValue)
}