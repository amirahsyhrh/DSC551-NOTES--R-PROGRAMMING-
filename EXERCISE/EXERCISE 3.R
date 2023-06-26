#QUESTION 2
#using rnorm(n, miu/mean, sigma/std. deviation)

set.seed(777)
x = rnorm(2000, 150, 15)
x = x[1:100]

hist(x,, prob=T, xlab= "samples", main="Histogram of samples form Normal Distribution")
curve(dnorm(x, 150, 15), add=T, col="red")

xx=matrix(round(x,1),nrow=10, ncol=10,byrow=T)

xx1=array(xx,dim=c(5,5,2))

xx1[2,3,1] #array 1
xx1[2,1,2] #array 2
xx1[4,5,2] #array 2


xx2=matrix(xx1,ncol=5, nrow=5,byrow=T)
xx2=t(xx1[,,1])