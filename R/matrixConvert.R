matrixConvert <- function(triMatrix, colname = c("sp1","sp2","dist")){
  m <- as.matrix(triMatrix)
  m2 <- melt(m)[melt(upper.tri(m))$value,]
  names(m2) <- colname
  invisible(m2)
}

