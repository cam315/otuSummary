ordination <- function(otutab, env=NULL, SiteInRow=TRUE, percent=TRUE, mySite=NULL, ordtype ='urda', display = "sites", biplot=FALSE, legPos ='bottomright', showsite = FALSE, saveplot = FALSE, ...){
  message(rep('=',70))
  message("For unconstained ordination, ordtype options c('urda','ucca','unmds')")
  message("For constained ordination, ordtype options c('c_rda','c_cca','c_nmds')")
  message('For quick check only, please use original vegan functions for better plots')
  message(rep('=', 70))
  if(!SiteInRow) otutab <- typeConvert(otutab=as.data.frame(t(otutab)),taxhead = NULL)
  if(!percent) otutab <- sweep(otutab, 1, rowSums(otutab),"/")*100
  my.col = colChoose(mySite)
  pchx = pchChoose(mySite)
  if(is.null(env)){
    message(rep('-',60))
    message('Unconstrained ordination will be processed')
    if(ordtype=="urda"){
      uRDA(otutab,scale=FALSE,choices=1:2,
           display = "sites", showsp=TRUE, ...)
    } else if (ordtype=="ucca"){
      uCCA(otutab,scale=FALSE,choices=1:2,
           display = "sites", showsp=TRUE, ...)
    } else if (ordtype=="unmds"){
      nmdsFUN(otutab,scale=FALSE,choices=1:2,
              display = "sites", showsp=TRUE, ...)
    }else {stop("invalid choice! Please read function tutorial")
    }
  } else{
    message(rep('-',60))
    message('Constrained ordination will be processed')
    if(ordtype=="c_cca"){
      cCCA(otutab,scale=FALSE,choices=1:2,
           display = "sites", showsp=TRUE, ...)
    } else if(ordtype=="c_rda"){
      cRDA(otutab,scale=FALSE,choices=1:2,
           display = "sites", showsp=TRUE, ...)
    } else if(ordtype=="c_nmds"){
      nmdsFUN(otutab,scale=FALSE,choices=1:2,
              display = "sites", showsp=TRUE, ...)
    }else {stop("invalid choice! Please read function tutorial")
    }
  }
  message("Please check the output file")
}
