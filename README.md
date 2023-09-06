# otuSummary
#### R package of 'otuSummary'

This package contains some functions which summarize the taxonomic composition, diversity at given taxonomic level, the contribution to beta diversity (Bray-Curtis dissimilarity) of the rare and abundant biospheres by using the OTU table which was generated either by qiime or mothur. 

In this updated version (v0.1.2), several custom functions were introduced to replace some functions that previously need to be called from vegan package (GPL=2). Now the package is adapted to the requirements of the GPL3 license.

Suggestion: please install this package in R>=3.5.

##### How to install this package from github?

    if(!require(devtools)){
      install.packages("devtools")
      library(devtools)
    } else {library(devtools)
    }
    
    install_github("cam315/otuSummary")
    
##### Check function list
    library("otuSummary")
    lsf.str("package:otuSummary")
    
##### About citation
    citation("otuSummary")

##### Comments or suggestions
If you have any comments or suggestions, please do not be hesitate to post on my github or drop email to me.
    



