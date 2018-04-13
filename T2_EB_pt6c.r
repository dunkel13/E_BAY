x<-seq(from=0, to=1, by=0.001)
prior<- function(x){ y=0.3*dbeta(x,10,30)+0.5*dbeta(x,20,20)+0.2*dbeta(x,30,10)}
posterior1<-function(x){0.57*dbeta(x,34,11)+0.41*dbeta(x,24,21)+0.002*dbeta(x,14,31)}
posterior2<-function(x){0.15*dbeta(x,35,15)+0.84*dbeta(x,25,25)+0.003*dbeta(x,20,35)}
curve(prior(x), from=0,to =1, ylim=c(0,5))
curve(posterior1(x), from=0, to=1, col="blue", add=TRUE)
curve(posterior2(x), from=0, to=1, col="purple", add=TRUE)
mtext("dist a posteriori n=5 y x=4", col="blue", adj=0)
mtext("dist a posteriori n=10 y x=5", col="purple", adj=1)
