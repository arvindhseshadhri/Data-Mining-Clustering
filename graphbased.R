myData <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/dataset1.csv", header=TRUE, sep=",")
str(myData)
library(fpc)
library(MCL)
library(rgl)
library(cluster)
library(igraph)
library(fields)
myData$cluster<-NULL
m <- as.matrix(myData)
distances <- rdist(m) 
distancesLogical <- distances < 2
for(i in 1:nrow(distancesLogical))
{
  distancesLogical[i,i] <- 0
}
distancesLogical <- matrix(as.numeric(distancesLogical), nrow = 1000, ncol = 1000)
mcl1 <- mcl(distancesLogical, addLoops=TRUE, ESM=TRUE) 
plot3d(myData, col=(mcl1$Cluster+1), main="MCL Clustering")