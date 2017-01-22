myData <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/dataset2.csv", header=TRUE, sep=",")
str(myData)
wss <- (nrow(myData)-1)*sum(apply(myData,2,var)) #Used to find the number of clusters for the dataset
for (i in 2:15) wss[i] <- sum(kmeans(myData,
                                     centers=i)$withinss)
plot(1:15, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")
library(fpc)
library(rgl)
library(cluster)
myData$class<-NULL #Making the class column of the dataset as NULL
myData$X<-NULL #Making the first column of the dataset as NULL
(kc <- kmeans(myData, 2)) #K-Means Clustering for dataset2.csv
myData1<-data.frame(myData,kc$cluster)
plot3d(myData1, col=kc$cluster)