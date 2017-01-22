myData1 <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/dataset1.csv", header=TRUE, sep=",")
str(myData1)
library(rgl)
library(fpc)
myData1$cluster<-NULL
db <- dbscan(myData1, eps=1)
db
str(db)
plot3d(myData1, col=db$cluster+1L)