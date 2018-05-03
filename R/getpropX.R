getpropX <- function(obj, choices=1:2){
  eigs <- eigenvals(obj)
  pop <- round(eigs/sum(eigs)*100, 2)
  labx <- paste0("(", pop[choices[1]], "%)")
  return(labx)
}
