#TOPIC 5: STATISTICAL DATA ANALYSIS 

#5.1 DESCRIPTIVE ANALYSIS
library(MASS)
dat=road
attach(dat)

summary(dat)
apply(dat,2,mean)
round(apply(dat,2,mean),1)

library(pastecs)
stat.desc(dat)
round(stat.desc(dat),2)

library(psych)
describe(dat)


mean = apply(dat,2,mean)
variance = apply(dat,2,var)
std.dev = apply(dat,2,sd)
min=apply(dat,2,min)
max = apply(dat,2,max)
median= apply(dat,2,median)
quartile = apply(dat,2,quantile)
quartile = quartile[-c(1,2,3,5),]
skewness = apply(dat,2,skew)

summary3 = rbind(min, max, mean, variance, std.dev, median, quartile, skewness)
summary3 = round(summary3,2)



#5.2 INFERENTIAL ANALYSIS

#5.2.1 Normality Test
str(road)

#a) Kolmogorov-smirnov
#use ks.test ()
ks.test(rural,"pnorm", mean=mean(rural),sd=sd(rural))

#b)Shapiro wilk test
#use shapiro.test()

shapiro.test(rural)
Ho = Rural is normally distributed
H1 = Rural is not normally distributed

p-value = 0.2054

Desicion: since p-value(0.2054)>alpha(0.05), we failed to reject null hypothesis

Conclusion:Therefore, rursal is normally distrubuted.

#5.2.2 1 Sample T-Test
# use t.test()
is.na(dat)
t.test()

#use data Octopus.csv
octo=read.table(file.choose(), header=T, sep=";")
attach(octo)
summary(octo)
octo$Sex=as.factor(octo$Sex)

#normality test
shapiro.test(Weight)

#performing 1 samplet-test using t.test() function
t.test(Weight,mu=2700,conf.level=0.95)

Ho = mu=2700 kg
H1 = mu=!2700 kg

p-value = 0.00956

Desicion: since p-value(0.00956)<alpha(0.05), we reject null hypothesis

Conclusion: Therefore, the averahe weight of octopus is not equal to 2700kg.















