CIS 6930: Introduction to Data Mining
Individual Project 3 – README FILE


In this project we use the .R script in R Studio to get the output for the various clustering algorithms for the given data sets. The following are the algorithms used:

1. K-Means Clustering for distance-based
2. DBSCAN for density-based
3. MCL (Markov Chain Clustering) for graph-based

The following are the packages to be installed so as to get the correct output for the functions:

install.packages("fpc")
 install.packages("rgl")
install.packages("cluster")
install.packages("MCL")
install.packages("igraph")
install.packages("fields")

After the function is finished running use the detach function to remove the packages:

detach("package:fpc",unload="TRUE")
detach("package:rgl",unload="TRUE")
detach("package:cluster",unload="TRUE")
detach("package:MCL",unload="TRUE")
detach("package:igraph",unload="TRUE")
detach("package:fields",unload="TRUE")

The following are the functions used in the file “indiproj3_part1.R” file for the clustering algorithms for dataset1.csv:

* kmeans1()- K-Means Clustering
* dbscan1()-DBSCAN Clustering
* graph1()- MCL Clustering

Here the dataset file is stored in my system and uses the path file for my system and so when running the functions of this dataset don’t forget to change the directory for the myData or myData1 variables in the beginning of the function so as to get the correct output. 

Also when installing the package “rgl” for using the “plot3d” function, it may give some error in a MAC OSX system. This can be rectified by installing the following program and logging off and logging back into the system.

http://www.xquartz.org/

Also the since the project is divided into 3 parts, I have attached three .R files as specified with the filenames: “indiproj_part1.R”, “indiproj_part2.R”, “indiproj_part3.R”.
