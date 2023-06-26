#QUESTION 1

Fish= c(210, 180, 195, 220, 231, 199, 224)
Regular= c(193, 186, 186, 223, 220, 183, 233)

dietdata = data.frame(Fish, Regular)

boxplot(dietdata, ylim = c(180,230), main="Special Diet Program", xlab="Diet Program", ylab="Systolic Blood Pressure")
Fish = round(mean(dietdata$Fish),2)
Regular = round(mean (dietdata$Regular),2)
x = table(Fish, Regular)


print(paste0("The average systolics blood pressure for fish oil diet's group is ", round(mean(dietdata$Fish),3),"mmHg"))

t.test(dietdata$Regular,mu=210,conf.int=0.95)

#hypothesis based on the output above.
H0: mu=120
H1: mu != 120

p-value > alpha , reject H0
There is no sufficient evidence to support the researcher’s claim.
We are 95% confident that the mean Regular Oil Diet Group is between 183.9346 and 222.9225.

