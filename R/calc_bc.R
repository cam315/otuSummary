# script to calculate Bray-Curtis dissimilarity matrix
## BC is calculated based on the function (BCij = 1 – (2*Cij) / (Si + Sj)), where
## Cij: The sum of the lesser values for the species found in each site.
## Si: The total number of specimens counted at site i
## Sj: The total number of specimens counted at site

#calc_bc <- function(df){
#  ## please note that the OTU table (df) must be with sites in rows and species in columns
#  nr = nrow(df)
#  si = rownames(df)
#  mat = matrix(nrow=nr, ncol=nr, byrow=FALSE)
#  colnames(mat) = rownames(mat) = si
#  ## calculate pairwise BC
#  for (i in 1:(nr-1)){
#    for (k in (i+1):nr){
#    tmp = df[i:k,]
#    #bc = sum(apply(tmp, 2, function(x) abs(max(x)-min(x))))/sum(tmp)
#    bc = sum(abs(tmp[1,] - tmp[2,])/sum(tmp))
#    mat[k,i] = bc
#   }   
#  }
#  mat2 = as.dist(mat)
#  return(mat2)
#}

calc_bc <- function(df){
    ## please note that the OTU table (df) must be with sites in rows and species in columns
    nr = nrow(df)
    si = rownames(df)
    mat = matrix(nrow = nr, ncol = nr, byrow = FALSE)
    colnames(mat) = rownames(mat) = si
    # calc rowSums
    rsum = rowSums(df,na.rm = TRUE)
    rsum_mat = as.dist(outer(rsum, rsum, FUN = "+"))
    dis_mat = dist(df, method = 'minkowski', diag = FALSE, upper = FALSE, p=1)
    ## return values of bray-curtis
    return(dis_mat/rsum_mat)
}


