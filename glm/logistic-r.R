setwd("C:/Users/Administrator/Developing/multivariate-r/glm")
data3.1<-read.csv("eg3.1.csv")
glm.logit<-glm(y~x,family = binomial,data=data3.1)
summary(glm.logit)

yp<-predict(glm.logit,data.frame(x=c(15,16,18,20,5))) #need conversion to p
p.fit<-exp(yp)/(1+exp(yp))


data3.2<-read.csv("eg3.2.csv")
glm.ln<-glm(y~x1+x2+x3,family = poisson(link=log),data=data3.2)
summary(glm.ln)
exp(coef(glm.ln))
