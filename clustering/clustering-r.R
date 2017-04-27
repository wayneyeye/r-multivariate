# hierarchical clustering
data4.1<-read.csv("C:/Users/Administrator/Developing/multivariate-r/clustering/eg4.1.csv",header=T)
d<-dist(data4.1,method = "euclidean",diag=T,upper=F,p=2)
print (d)
HC<-hclust(d,method="single")
plot(HC)
HC2<-hclust(d,method="complete")
plot(HC2)

# k-means clustering
# use h clustering to prob
data4.2<-read.csv("C:/Users/Administrator/Developing/multivariate-r/clustering/eg4.2.csv",header=T,fileEncoding = "UTF-8")
d<-dist(data4.2,method = "euclidean",diag=T,upper=F,p=2)
print (d)
HC3<-hclust(d,method="single")
plot(HC3)
# k means
KM<-kmeans(data4.2,4,nstart=20,algorithm="Hartigan-Wong")
sort(KM$cluster)
print(data4.2)
