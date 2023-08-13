slimTax <- function(taxonomy, from, to, separator =';', jump=FALSE){
  ## this only works for the taxonomy with all levels
  ## pre = c("d","p","c","o","f","g",'s'), meaning 7 levels in total
  ## jump means only take the tax of from and to, excluding those in between
  tax = fillTaxAll(taxonomy)
  if(jump) out = sapply(strsplit(tax, split= separator), function(x) paste(x[c(from,to)], collapse=separator))
  else out = sapply(strsplit(tax, split= separator), function(x) paste(x[from:to], collapse=separator))
  return(out)
}
