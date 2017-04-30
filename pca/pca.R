data6.1<-read.table("clipboard",header=T)
R=round(cor(data6.1),3)
R
pca6.1<-princomp(data6.1,cor=T)
pca6.1
summary(pca6.1,loadings = T)
round(predict(pca6.1),3)
screeplot(pca6.1,type="lines")

load=loadings(pca6.1)
load
plot(load[,1:2],xlim=c(-0.6,0.6),ylim=c(-0.6,0.6))
text(load[,1],load[,2],adj=c(0.5,-0.5))
abline(h=0);
abline(v=0)

case6.1<-read.table("clipboard",header=T)
R=round(cor(case6.1),3)
R
pcacase_6.1<-princomp(case6.1,cor=T)
summary(pcacase_6.1,loadings = T)
screeplot(pcacase_6.1,type="lines")
