x<-seq(0, 1, length=21)
for (i in 2:30){
b<-pbeta(x,i,i, lower.tail = TRUE)
print(b[6])
print(b[11]-b[6])
print(b[16]-b[11])
print(1-b[16])
print(i)
}
