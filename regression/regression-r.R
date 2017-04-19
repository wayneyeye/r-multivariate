# setting current working dir to script dir
setwd('C:/Users/Administrator/Developing/multivariate-r/regression')
data2.1<-read.csv("eg2.1.csv",header = T)
head(data2.1)
lm.salary<-lm(y~x1+x2+x3+x4,data = data2.1)
summary(lm.salary)

# stepwise regression
lm.step<-step(lm.salary,direction = "both")
summary(lm.step)

# model diagonose
y.res<-residuals(lm.salary)
y.rst<-rstandard(lm.step)
print(y.rst)
y.fit<-predict(lm.step)
plot(y.res~y.fit)
plot(y.rst~y.fit)

#residual plot indicates the common variance assumption does not hold
lm.step_new<-update(lm.step,log(.)~.)
y.rst<-rstandard(lm.step_new)
print(y.rst)
y.fit<-predict(lm.step_new)
plot(y.rst~y.fit)

# remove the outliers
lm.salary<-lm(log(y)~x1+x2+x3+x4,data=data2.1[-c(4,35),])
lm.step<-step(lm.salary,direction="both")
y.rst<-rstandard(lm.step)
y.fit<-predict(lm.step)
plot(y.fit,y.rst)

# standard diagnostic plots
par(mfrow=c(2,2))
plot(lm.step_new)
influence.measures(lm.step_new)

#prediction
preds<-data.frame(x1=20000,x4=20)
predict(lm.step,newdata = preds,interval="prediction",level=0.95)
