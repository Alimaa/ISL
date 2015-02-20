
####################### Page 63: Lea

x<-seq(0,100,1)

y<-vector(length=length(x))

for (i in 1:length(x)){
  
  y[i]<-2*x[i]+10+rnorm(1,sd=40)
  
}


nom<-0
den<-0

for (i in 1:length(x)) nom<-nom+(x[i]-mean(x))*(y[i]-mean(y))
for (i in 1:length(x)) den<-den+(x[i]-mean(x))^2

yh<-vector(length=length(x)-10)

for (i in 1:(length(x)-10)) yh[i]<-mean(y[i:i+10])

a<-nom/den
b<-mean(y)-a*mean(x)


windows()
plot(x,y,ylim=c(0,300))
par(new=TRUE)
lines(c(x[1],x[100]),c(2*x[1]+10,2*x[100]+10),col='green',lwd=2,ylim=c(0,300))
par(new=TRUE)
lines(c(x[1],x[100]),c(a*x[1]+b,a*x[100]+b),col='red',lwd=2,ylim=c(0,300))
par(new=TRUE)
plot(x[1:89],yh,ylim=c(0,300),type='l',color='blue')
