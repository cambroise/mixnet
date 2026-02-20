\name{plot.mixnet}
\alias{plot.mixnet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot of mixnet object }
\description{
plot.mixnet display a two plot: the Integrated Classification
Criterion in function of the number of classes and the adjacency
matrix reorganized according the estimated partition}
\usage{
\method{plot}{mixnet}(x, q = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a mixnet object (output of the  mixnet function)}
  \item{q}{the number of classes}
  \item{...}{further graphical arguments.}
}
\seealso{See Also \code{\link{mixnet}}}
\examples{
graph.affiliation(n=100,c(1/3,1/3,1/3),0.8,0.2)->g
mixnet(g$x,qmin=2,qmax=6)->xout
plot(xout,3)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{graphs}

