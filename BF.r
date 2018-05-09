### Función para calcular Factor de Bayes ###
BF<-function(A,C,n,x){
  a=A[1]; b=A[2]
  c=C[1]; d=C[2]
  t=sum(x)
  k=NULL
  for (i in 1:5){
    k[i]=(choose(20,x[i]))
    p=prod(k)
  }
  M1<-p*beta(t+a, 20*n+b-t)/beta(a,b)
  f<-prod(factorial(x))
  M2<- (gamma(c+t) * d^c )/(f*gamma(c)*(n+d)^(c+t))
  BF=M1/M2
  print(BF)
}
n=5;

A=c(2,15);
C=c(2,1)
x=c(0,1,2,3,4)
z=c(0,0,1,4,5)
BF1=round(BF(A,C,n,x),4)
BF2=round(BF(A,C,n,z),4)
  
B=c(4,4)
D=c(4,2)
BF3=round(BF(B,D,n,x),4)
BF4=round(BF(B,D,n,z),4)
t2<-data.frame(c1=c(BF1,BF2), c2=c(BF3, BF4), row.names=c("(0,1,2,3,4)", "(0,0,1,4,5)"));t2
rm(list=ls())
