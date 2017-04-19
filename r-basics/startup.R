# setting current working dir to script dir
setwd("C:/Users/Administrator/Developing/multivariate-r/r-basics")

x1<-seq(2,6,by=1)
x2<-c(8,10,12,16,21)
z.dat<-data.frame(x=x1,y=x2)
print(z.dat)
cbind(x1,x2)

#matrices
A<-matrix(1,nr=2,nc=2)
print(A)
B<-diag(3)
print(B)
x<-c(2,3,4)
C<-diag(x)
print(C)

dat<-read.table(sub("\\\\","/","windows path here"))