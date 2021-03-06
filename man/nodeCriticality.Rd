% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nodeCriticality.R
\name{nodeCriticality}
\alias{nodeCriticality}
\title{Calculate the criticality of each node}
\usage{
nodeCriticality(edgeList, nodeList, c, s, adjMatrix, setPS, setPower,
  approximate)
}
\arguments{
\item{edgeList}{A dataframe of network data within which sources are in the first column and targets are in the second column.}

\item{nodeList}{A dataframe within which all nodes and their respective names are listed.}

\item{c}{The cost of signalling to, and adding an, extra node to a block.}

\item{s}{The maximum size of block that is considered within the block formation game.}

\item{adjMatrix}{The network represented as an adjacency matrix.}

\item{setPS}{The set of predeccessors and successors for each combination of nodes considered.}

\item{approximate}{Should the Strong Nash Equilibrium be approximated? TRUE or FALSE.}
}
\description{
This function calculates the criticality of each node in the network. Node criticality is derived from the resulting Strong Nash equilibrium (SNE) configuration from the block formation game.
}
\examples{
nodeCriticality()
}
\keyword{criticality}
