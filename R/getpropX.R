getpropX <- function(obj){
  eigs <- eigenvals(obj)
  pop <- round(eigs/sum(eigs)*100, 2)
  labx <- paste0("(", pop[1], "%)")
  return(labx)
}
