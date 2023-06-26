#QUESTION 1
#a
X=matrix(3:6,nrow=2)
Y=matrix(rep(5,4),nrow=2)

add = X+Y #addition
multi = X*Y #multiplication

solve(X) #inverse
det(X) #determinant
det(Y)#determinant

#b
x=rpois(2000,10)
x2=x[1:100]

#c
#using rnorm(n, miu/mean, sigma/std. deviation)
set.seed(133)
a=rnorm(3000, 225, sqrt(100))


#QUESTION 2

#a
AA= c(24,45,61,51,88)
color = c("red","blue","yellow","black","pink")
lab =c("A1", "A2", "A3", "A4", "A5")
pie(AA, label = lab  , main="Figure 1", col = color)
legend("topright", legend = lab, bty = "n", fill = color)

#b
stand.proc= c(61, 68, 69, 74, 58, 63)
faci.tools= c(32, 42, 40, 34, 38, 33)

dat = data.frame(stand.proc, faci.tools)

par(mfrow=c(1,2))
hist(stand.proc, main="The Completion Time Distribution for Standard Procedure", xlab= "Completion Time (Minutes)")
boxplot(faci.tools, main="The Completion Time Distribution for Faci Tools", ylab="Completion Time (Minutes)")


Mean=mean(stand.proc)
Stand.Dev=sd(stand.proc)
Median=median(stand.proc)
sumnew=cbind(Mean, Stand.Dev, Median)

Means=mean(faci.tools)
Stand.Devs=sd(faci.tools)
Medians=median(faci.tools)
sum2= cbind(Means, Stand.Devs, Medians)

hehe= rbind(sumnew,sum2)

colnames(hehe) = c("Mean","Std.Dev","Median")
rownames(hehe)=c("Stand.Proc","Faci.tools")



#QUESTION 3
t.test(faci.tools,mu=34,conf.int=0.95,alternative="greater")

#hypothesis based on the output above.
H0: mu=34
H1: mu > 34

Reject H0 if p-value <= alpha
Since p-value (0.09714) > alpha (0.05),we fail to reject the 
null hypothesis. 

There is no sufficient evidence to conclude that the time of 
completion using facilitation tools is more than 34 minutes.

#QUESTION 4
#4(a) 

summary=function(x){
	a=mean(x)
	b=var(x)
	print(list(mean=a,variance=b))
}


#4(b) (i)
xbar=sum(x)/length(x)
ybar=sum(y)/length(y)
b1=sum((x-xbar)*(y-ybar))/sum((x-xbar)^2)

#4(b)(ii)
b0=ybar-(b1*xbar)






