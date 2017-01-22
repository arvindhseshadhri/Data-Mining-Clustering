myData <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/dataset1.csv", header=TRUE, sep=",")
str(myData)
library(flexclust)
library(rgl)
x1 <- function (x, centers) 
{
  y1 <- matrix(0, nrow = nrow(x), ncol = nrow(centers))
  for (k in 1:nrow(centers)) {
    p <- (t(x) - centers[k, ])^2
    p["x",] <- p["x",]*16 #4 times for x and 4 for the mean
    p["y",] <- p["y",]*4 #2 times for y and 2 times for the mean
    z[, k] <- sqrt(colSums(p))
  }
  z
}
kc <- kmeans(myData,5)
kc2 <- kcca(myData, 5, family=kccaFamily(dist=a1))
plot3d(myData$x,myData$y,myData$z,col=clusters(kc2))