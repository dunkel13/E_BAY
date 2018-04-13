x<-seq(from=-10, to=10, by=0.01)
priora<-function(x){y=dnorm(x,0,1)}
posterior1<-function(x){y=dnorm(x,1.27,0.81)}
curve(priora(x), from=-10,to =10, ylim=c(0,0.5))
curve(posterior1(x), from=-10, to=10 , col="red", add=TRUE)
mtext("dist a posteriori N(1.27, 0.81)", col="red", adj=0)
priorb<- function(x){ y=0.8*dnorm(x,0,1)+0.2*dnorm(x,5,4)}
posterior2<-function(x){0.71*dnorm(x,1.27,0.81)+0.29*dnorm(x,2.29,2.11)}
curve(priorb(x), from=-10, to=10, ylim=c(0,0.5))
curve(posterior2(x), from=-10, to=10 , col="green", add=TRUE)
mtext("dist a posteriori 0.71*N(1.27, 0.81)+0.29*N(2.29,2.11)", col="green", adj=1)
rm(list=ls())
