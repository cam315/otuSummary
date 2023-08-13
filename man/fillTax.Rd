\name{fillTax}
\alias{fillTax}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  reshape the heirarchical taxonomy
}
\description{
reformat the taxonomy with the last clear assignment and changing the prefix
}
\usage{
fillTax(x, split = ';', prefix=TRUE, fillAll=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Charcter, strings to give the heirarchical rank of taxonomy, e.g., d__Bacteria;p__Planctomycetota;c__Planctomycetes;o__Gemmatales;f__Gemmataceae;g__uncultured;s__uncultured_bacterium}
  \item{split}{
Characte, the seperator for the heirarchical taxonomy.
}
  \item{prefix}{
Logical, whether contains prefix in the taxonomic strings, default TRUE.
}
  \item{fillAll}{
Logical, whether to fill all taxonic level.
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

test = 'd__Bacteria;p__Planctomycetota;c__Planctomycetes;o__Gemmatales;f__Gemmataceae;g__uncultured;s__uncultured_bacterium'
  fillTax(x = test, split = ';', prefix=TRUE, fillAll=TRUE)
  
data(otumothur)

otumothur$taxonomy = fillTaxAll(otumothur$Taxonomy)
print(head(otumothur$taxonomy))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{aplot }% use one of  RShowDoc("KEYWORDS")
