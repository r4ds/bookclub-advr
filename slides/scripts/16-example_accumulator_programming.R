
## STACK EXAMPLE ###### ###### ###### ###### ######

new_stack <- function(items = list()) {
  structure(list(items = items), class = "stack")
}

push <- function(x, y) {
  x$items <- c(x$items, list(y))
  x
}

pop <- function(x) {
  n <- length(x$items)
  
  item <- x$items[[n]]
  x$items <- x$items[-n]
  
  list(item = item, x = x)
}

s <- new_stack()
s <- push(s, 10)
s <- push(s, 20)

out <- pop(s)

out$item


## ZEALLOT EXAMPLE ###### ###### ###### ###### ######
library(zeallot)

c(value, s) %<-% pop(s)
value

###### STACK on R6 ###### ###### ###### ######
Stack <- R6::R6Class("Stack", list(
  items = list(),
  push = function(x) {
    self$items <- c(self$items, x)
    invisible(self)
  },
  pop = function() {
    item <- self$items[[self$length()]]
    self$items <- self$items[-self$length()]
    item
  },
  length = function() {
    length(self$items)
  }
))

s <- Stack$new()
s$push(10)
s$push(20)
s$pop()


## CHAINING ##### ###### ###### ######
s <- Stack$new()
s$
  push(10)$
  push(20)$
  pop()










