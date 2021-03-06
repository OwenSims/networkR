% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setBrokerage.R
\name{setBrokerage}
\alias{setBrokerage}
\title{Brokerage of each node set within the network}
\usage{
setBrokerage(edgeList, nodeList, s, adjMatrix, setPS, perCapita, approximate)
}
\arguments{
\item{edgeList}{A dataframe of network data within which sources are in the first column and targets are in the second column.}

\item{nodeList}{A dataframe within which all nodes and their respective names are listed.}

\item{s}{The maximum size of block that is considered within the block formation game.}

\item{adjMatrix}{The network represented as an adjacency matrix.}

\item{setPS}{The set of predeccessors and successors for each combination of nodes considered.}

\item{perCapita}{The brokerage power of the node set divided by the number of nodes within the set.}

\item{approximate}{Should the Strong Nash Equilibrium be approximated? TRUE or FALSE.}
}
\description{
This function calculates the brokerage of each set of nodes within the network.
}
\examples{
setBrokerage()
}
\keyword{brokerage}
