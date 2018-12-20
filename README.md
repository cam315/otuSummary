# otuSummary
#### R package of 'otuSummary'

This package contains some functions which summarize the taxonomic composition, diversity at given taxonomic level, the contribution to beta diversity (Bray-Curtis dissimilarity) of the rare and abundant biospheres by using the otu table which was generated either by qiime or mothur. 

Suggestion: please install this package in R3.3 or R3.5 on windows (available at https://cran.r-project.org/bin/windows/base/rtest.html). R3.4.0 may have a bug with installed.packages on Windows system (for details please see https://www.mail-archive.com/r-help@r-project.org/msg243256.html).

##### How to install this package from github?

    if(!require(devtools)){
      install.packages("devtools")
      library(devtools)
    } else {library(devtools)
    }
    
    install_github("camel315/otuSummary")
    
##### Check function list
    library("otuSummary")
    lsf.str("package:otuSummary")
    
##### About citation
    citation("otuSummary")

##### Comments or suggestions
If you have any comments or suggestions, please do not be hesitate to post on my github or drop mail to me.
    



