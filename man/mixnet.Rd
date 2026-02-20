\name{mixnet}
\alias{mixnet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Mixture of Erdos-Renyi Random Graphs}
\description{
Estimate the parameters and hidden class variable of a Mixture of
Erdos Renyi Random Graphs. The estimation is performed for a 
Bernoulli Mixture 
}
\usage{
mixnet(x,qmin=2,qmax=NULL,method="variationnal",nbiter=10,improve=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{Adjacency matrix or a matrix of egdes (each column gives
  the nodes defining an edge) or spm filename (a .spm
  file describes the network as a sparse matrix}
  \item{qmin}{Number of classes estimated (if used alone, it is the
  minimum number of classes which will be tested)}
  \item{qmax}{Maximimum number of classes (use with qmin)}
  \item{method}{strategy used for the  estimation: "classification", or
     "variationnal"}
  \item{nbiter}{Number of EM iterations for the E step  (Default: 10)}
  \item{improve}{Flag to choose between improved or basic strategies
  for chosing the model}
}
\details{
 \code{mixnet}  is a R wrapper for the c++ software package mixnet
 developped by Vincent Miele (2006). 

Erdos-Renyi Mixture Model for Graph (MixNet), which 
has been proposed by Daudin et. al (2008) with an associated
EM  estimation algorithm, and is not to be confused with Exponential Random Graph Models for 
Network Data (ERGM) which consider distributions ensuing from the
exponential  family to model the edge distribution. The MixNet model
allows  to capture the structure of a network and in particular to detect communities.

There exists a strong connection between Mixnet and block clustering..  
Block clustering searches for homogeneous blocks in a data matrix by
simultaneous  clustering of rows and columns. 

The proposed estimation strategies deals with undirected graphs. They
are of two type: 
\describe{
\item{variationnal}{which refers to the paper of Daudin et. al (2008)}
\item{classification}{which implements the method described in Zanghi
et. al (2008)}
}


}
\value{
 \code{mixnet}
returns an object of class mixnet, which is basically a list of item,
each item containing the result of the estimation for a given number
of class q. It has  the following  fields
  \item{ICL }{Integrated Classification Likelihood, which is the
  criterion used for model selection}
  \item{alphas}{The vector of proportion, whose length is the number
  of component}
  \item{Pis}{The connectivity matrix}
  \item{Taus}{The matrix of posterior probabilities (of the hidden
  color knowing the graph structure)}
}
\references{
Jean-Jacques Daudin, Franck Picard and Stephane Robin 
June (2008) , 
\emph{A mixture model for random graphs.}
Statistics and Computing, 18, 2, 151--171.

Hugo Zanghi, Christophe Ambroise and Vincent Miele (2008),
\emph{Fast online graph clustering via Erdos-Renyi mixture.}
Pattern Recognition, 41, 3592-3599.


Hugo Zanghi, Franck Picard, Vincent Miele, and Christophe Ambroise (2008),
\emph{Strategies for Online Inference of Network Mixture.}
Annals of Applied Statistics (submitted).

Vincent Miele. MixNet C++ package.

}


\author{Christophe Ambroise }
\examples{

graph.affiliation(n=100,c(1/3,1/3,1/3),0.8,0.2)->g
mixnet(g$x,qmin=2,qmax=6)->xout
plot(xout)

data(blog)
mixnet(x=blog$links,qmin=2,qmax=12)->xout
plot(xout)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{graphs}
\keyword{cluster}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
