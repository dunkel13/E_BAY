curve(dbeta(x,1,1), from=0, to=1, ylim=c(0,4))
curve(dbeta(x,3,9), col = "red", add=TRUE)
par(mfrow = c(1,1))
