#' Generalised beta-measure (Gilles and van den Brink, 2000) applied to each node
#'
#' This function calculates the generalised beta-measure, or dominance, of each node as discussed in Gilles and ven den Brink (2000). This will also consider a weighted network.
#' @param edgeList A dataframe of network data within which sources are in the first column and targets are in the second column.
#' @param nodeList A dataframe within which all nodes and their respective names are listed.
#' @keywords beta-measure
#' @export
#' @examples
#' betaMeasure()

betaMeasure <- function(edgeList, nodeList) {
  inDeg <- Beta <- 0
  for (i in 1:nrow(nodeList)) {
    inDeg[i] <- sum(edgeList[, 2] == i)
  }
  for (i in 1:nrow(nodeList)) {
    Beta[i] <- 0
    successorSet <- subset(edgeList,
                           edgeList[, 1] == i)
    successorSet <- successorSet[, 2]

    if (length(successorSet) > 0) {
      for (j in 1:length(successorSet)) {
        Beta[i] <- Beta[i] + (1/inDeg[successorSet[j]])
      }
    }
  }
  if (sum(Beta) == sum(inDeg > 0)) {
    return(round(Beta, digits = 3))
  } else {
    return(print("We made a mistake in the calculation. HALP!"))
  }
}
