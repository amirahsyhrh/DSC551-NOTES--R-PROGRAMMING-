#TOPIC 7- RANDOM NUMBER GENERATION

#7.1 UNIFORM RANDOM NUMBERS
#using runif(n,a,b) n=total number, a=min, b=max

set.seed(100)
x=runif(100,2,5)
#construct histogram
hist(x,prob=T, col="red")
curve(dunif(x,2,5),add=T, col="cyan", lwd=3)

#7.2 BINOMIAL RANDOM NUMBERS
#using rbinom(N,n,p) N=number of sample, n=number of trials, p= probability of success

set.seed(100)
k = rbinom(50, 10, 0.8)
hist(x, prob=T)

#to plot the theoretical distribution
points(0:50, dbinom(0:50,10,0.8), type="h", lwd=3)
points(0:50, dbinom(0:50,10,0.8), type="p", lwd=3)

#7.3 POISSON RANDOM NUMBERS
#using rpois(n, lambda)

set.seed(100)
r = rpois(50, 10)
hist(r,prob=T)

#to plot the theoretical distribution
points(0:20, dpois(0:20, 10), type="h", lwd=3)
points(0:20, dpois(0:20, 10), type="p", lwd=3, col="red")

#7.4 NORMAL RANDOM NUMBERS
#using rnorm(n, miu/mean, sigma/std. deviation)

set.seed(999)
j= rnorm(100, 27, 5)

hist(j, prob=T)
curve(dnorm(x, 27, 5), add=T, col="red")









