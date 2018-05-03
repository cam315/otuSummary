getpropY <- function(obj){
  eigs <- eigenvals(obj)
  pop <- round(eigs/sum(eigs)*100, 2)
  laby <- paste0('(',pop[2],'%)')
  return(laby)
}
