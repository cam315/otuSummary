getpropY <- function(obj, choices = 1:2){
  eigs <- eigenvals(obj)
  pop <- round(eigs/sum(eigs)*100, 2)
  laby <- paste0('(',pop[choices[2]],'%)')
  return(laby)
}
