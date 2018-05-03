\name{bplot}
\alias{bplot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
barplot with custom controls on the x axis lebels
}
\description{
barplot with custom controls on the x axis lebels, e.g. rotation.
}
\usage{
bplot(data, srt = 45, yoff = 0.05, dataoff = 0.025, barcol = "grey", grid = TRUE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
Numeric, vector to plot in barplot.
}
  \item{srt}{
Numeric, rotation degree of the x axis labels.
}
  \item{yoff}{
Numeric, vertical offset of x axis labels.
}
  \item{dataoff}{
Numeric, vertical offset of data labels in relation to the bar height.
}
  \item{barcol}{
Character, color of bar. By default is grey.
}
  \item{grid}{
Logical, whether show the grids in the plot.
}
  \item{...}{
arguments to be passed to/from other methods.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
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
data(otumothur)
summaryInfo <- otuReport(otutab=otumothur, siteInCol=TRUE, taxhead='taxonomy',
    platform = 'qiime', percent=FALSE, level='phylum', collap = ";")
length(summaryInfo)
names(summaryInfo)
summaryInfo[[1]]
bplot(summaryInfo[["taxaFreqs"]])
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
