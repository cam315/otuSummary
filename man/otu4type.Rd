\name{otu4type}
\alias{otu4type}
\docType{data}
\title{
OTU table with samples and taxonomy in rows and otus in columns.
}
\description{
A dataset containing bacterial counts from the North Temperate Lakes Microbial Observatory. Due to the last row contain taxonomy, the type of each column is factor.
}
\usage{data("otu4type")}
\format{
  A dataframe with 591 columns (OTUs) and 454 rows (453 samples plus 1 taxonomy).
    \describe{
  }
}
\details{
This data show examples of 'SiteInRow' if there is a taxonomy rows. When read in, the column with nuermic counts will be marked as 'factor'. This data set then could be transposed with correct type conversion.
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(otu4type)
sapply(otu4type, class)
new <- typeConvert(otu4type)
sapply(new, class)
}
\keyword{datasets}
