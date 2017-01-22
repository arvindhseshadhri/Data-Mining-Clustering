myData <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/dataset1.csv", header=TRUE, sep=",")
str(myData)
library(fpc)
library(rgl)
library(cluster)
myData$cluster<-NULL #Making the cluster column of the dataset as NULL
plot3d(myData) #Plotting of the dataset without clustering
kmeans1<-function() #K-Means Clustering
{
  myData <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/dataset1.csv", header=TRUE, sep=",")
  str(myData)
  library(fpc)
  library(rgl)
  library(cluster)
  myData$cluster<-NULL
(kc <- kmeans(myData, 10))
plot3d(myData[c("x", "y","z")], col=kc$cluster)
}
dbscan1<-function() #DBSCAN Clustering
{
  myData <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/dataset1.csv", header=TRUE, sep=",")
  str(myData)
  library(fpc)
  library(rgl)
  library(cluster)
  myData$cluster<-NULL
d <- dbscan(myData,1,showplot = 1)
plot3d(myData[c("x", "y","z")], col=d$cluster+1L, pch=8, cex=2)
}
graph1<-function() #MCL Clustering
{
  myData <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/dataset1.csv", header=TRUE, sep=",")
  str(myData)
  library(fpc)
  library(MCL)
  library(rgl)
  library(cluster)
  library(igraph)
  library(fields)
  myData$cluster<-NULL  
mat <- as.matrix(myData) #Making the dataset in matrix form for MCL
distances <- rdist(mat) 
distancesLogical <- distances < 2
for(i in 1:nrow(distancesLogical))
{
  distancesLogical[i,i] <- 0
}
distancesLogical <- matrix(as.numeric(distancesLogical), nrow = 1000, ncol = 1000)
mcl1 <- mcl(distancesLogical, addLoops=TRUE, ESM=TRUE) 
plot3d(myData, col=(mcl1$Cluster+1), main="MCL Clustering")
}