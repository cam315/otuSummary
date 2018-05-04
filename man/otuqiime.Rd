\name{otuqiime}
\alias{otuqiime}
\docType{data}
\title{
OTU table generated from 8 lakes over 4 years
}
\description{
A dataset containing bacterial counts from the North Temperate Lakes Microbial Observatory, the taxonomy column is in qiime format. The data set is published in Msphere (Linz et al 2017).
}
\usage{data("otuqiime")}
\format{
  A dataframe with 454 columns (453 samples plus 1 taxonomy) and 591 rows (OTUs).
}
\details{
The first two letters of sample names denote the sampling site (e.g. "CB"), followed with epilimnion or hypolimnion ("E" or "H") and sampling date ("01OCT0"). The original data set have replicates ('R1' and 'R2'), this dataset only extracted the subset of 'R2' (with extension ".R2" in sample names).
}
\source{
see https://github.com/cran/OTUtable/tree/master/data
}
\references{
Linz AM, Crary BC, Shade A, Owens S, Gilbert JA, Knight R et al (2017). Bacterial community composition and dynamics spanning five years in freshwater bog lakes. Msphere 2: e00169-00117.
}
\examples{
data(otuqiime)
dim(otuqiime)
names(otuqiime)[1:10]
rownames(otuqiime)[1:10]
head(otuqiime$taxonomy)
}
\keyword{datasets}
