# otuSummary
R package of 'otuSummary'.

This package contains some functions which summarizy the taxonomic composition, diversity contribution (Bray-Curtis dissimilarity) of the rare and abundant biospheres by using the otu table which was generated either by qiime or mothur. 

Suggestion: please install this package in R3.3 or R3.5 on windows (available at https://cran.r-project.org/bin/windows/base/rtest.html). R3.4 was reported to have a bug with installed.packages with R 3.4.0 on Windows (see https://www.mail-archive.com/r-help@r-project.org/msg243256.html).

How to install?

if(!require(devtools)){
  install.packages("devtools")
  library(devtools)}
  
install_github("camel315/otuSummary")

