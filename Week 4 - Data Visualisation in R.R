#TOPIC 4: DATA VISUALIZATION

#4.1 GRAPHICAL PRESENTATION FOR CATEGORICAL DATA
#for frequency table, use table(v1)
#for cross tabulation, use table (v1,v2,..)

#EXAMPLE
library(foreign) #Import spss file
dat = read.spss(file.choose(), to.data.frame=T)
attach(dat)
#to tabulate the count of students in each gender
#frequancy table
table(GENDER) #need to attach first - attach(dat) 

#to tabulate the number of students according to gender and age
#cross tabulation table
table(GENDER,AGE)

#4.1.1 PIE CHART
pie(table(GENDER))
pie(table(AGE))

#to sum all the AGE
sum(table(AGE))

#to compute the PERCENTAGE for each age
freq = table(AGE)
pct = paste0(round((freq/sum(freq)) * 100, 0),"%")
pie(table(pct))

#pie chart with percentage
pie(freq, main="Age of Students") #add TITLE on the chart
lab = levels(AGE)
lab = paste(lab,pct)

pie(freq,label=lab,main="age")

#to change the color
color = c("red", "green", "yellow")
pie(freq, label = lab, main="Age", col = color)

#to consturct 3D pie chart
install.packages("plotrix")
library(plotrix)
pie3D(freq, labels = lab, main="Age", col = color, explode=0., cex.main=2.0, labelcex = 0.5)
legend("topright", legend = levels(AGE), bty = "n", fill = color)

#Exercise please do Iris.dataset

#4.1.2 BAR CHART
#use barplot() function

#Import BMI.sav dataset into R
library(foreign)
dat3 = read.spss(file.choose(), to.data.frame = T)
attach(dat3)
freq1 = table(gender)
freq2 = table(Program)

par(mfrow=c(1,2))
barplot(freq1, xlab="Frequency", ylab="Gender", main="No. of students according to gender", horiz = T, xlim = c(0,5), col = c("blue", "pink"))
barplot(freq1, xlab="Frequency", ylab="Gender", main="No. of students according to gender", xlim = c(0,5), col = c("blue", "pink"))

par(mfrow=c(1,2))
barplot(freq1, xlab="Frequency", ylab="Gender", main="No. of students according to gender", horiz = T, xlim = c(0,5), col = c("blue", "pink"))
barplot(freq2, xlab="Program", ylab="Frequency", main="No. of students according to program", xlim = c(0,30), col = c("blue", "pink", "green", "black"))

#corsstable/contingency table

cont=table(height,weight)
barplot(cont)
barplot(cont, main="Stack barchat", xlab="weight", ylab="Frequency", ylim = c(0,16), col = c("red", "blue"))
barplot(cont, main="Stack barchat", xlab="weight", ylab="Frequency", ylim = c(0,16), col = c("red", "blue"))

#to plot clustered bar plot
barplot(cont, main="Clustered barplot", xlab="weight", ylab="Frequency", ylim = c(0,16), col = c("red", "blue"), beside=T)

#4.2 GRAPHICAL PRESENTATION FOR NUMERICAL DATA
#4.2.1 Stem and leaf plot (stem() function)
library(MASS)
dat = road
str(dat)
attach(dat)
stem(temp) #basic function for stem & leaf plot
stem(temp,scale=0.5) #to remove the duplicate


#4.2.2 Box and whisker plot
#Using boxplot() function
library(foreign)
bmi = read.spss(file.choose(), to.data.frame = T)
attach(bmi)

#create boxplot for height
boxplot(height) #Basic boxplot
boxplot(bmi$height~bmi$gender)

par(mfrow=c(1,2))
boxplot(height, ylab="Height(cm)", main="Boxplot of Height of Students", col = "pink")
boxplot(weight, ylab="Weight(kg)", main="Boxplot of Weight of Students", col = "pink")

#to create boxplot according to gender
par(mfrow=c(1,2))
boxplot(height~gender, ylab="height (cm)", main="Height of Students")
boxplot(height~gender, ylab="height (cm)", main="Height of Students", horizontal=T)

par(mfrow=c(2,1))
boxplot(weight~gender, ylab="Weight (kg)", main="Height of Students")
boxplot(weight~gender, ylab="height (kg)", main="Height of Students", horizontal=T)



#4.2.3 Histogram
#Using hist() function
#create simple histogram for height/Weight
par(mfrow=c(1,2))
hist(height,ylab="Frequency of Students", col="yellow", ylim=c(0,6))
hist(weight,ylab="Frequency of Students", col="pink", ylim=c(0,4))

#adding the normal curve using the curve()
#add prob=T
par(mfrow=c(1,2))
hist(height, prob=T,ylab="Frequency of Students", col="yellow")
curve(dnorm(x,mean=mean(height),sd=sd(height)), add=T,col="red")

hist(weight, prob=T,ylab="Frequency of Students", col="pink")
curve(dnorm(x,mean=mean(weight),sd=sd(weight)), add=T,col="red", lty=2, lwd=3)

#4.2.4 Normal distribution plot
#density plot

plot(density(weight), col="red", ylim=c(0,0.03), main="Density Estimate of the Weight", xlab="Weight(KG)")
curve(dnorm(x, mean=mean(weight),sd=sd(weight)), add=T, col="blue", lwd=3)

#4.2.5 Scatter Plot

#use Ozone data in excel format
ozone = read.table(file.choose(), header=T, sep=',')
attach(ozone)

plot(wind, temp) #(x,y)
plot(wind, temp, ylab="Temperature", xlab="wind", main="Relationship between temperature and wind", pch=3)
abline(lm(temp~wind), col="red", lwd=2)#(y,x)

#There is a negative relationship between temperature and wind.

#4.2.6 Quantile-Quantile (QQ Plot)
#use qqnorm()

qqnorm(wind)
qqline(wind, col="red", lwd=2)
#Since most of the points lie approx on the straight line, then we could say that wind dataset is approx to normal .Some outliers spotted at the upper tails.


#4.2.7 Cumulative frequency distribution (orgive)
#Use plot(ecdf()) function
plot(ecdf(wind)) #basic
plot(ecdf(wind), main="Cumulative Frequency Distribution", xlab="Wind Speed", ylab="Standard Normal Deviate", col="red")

range=0:20
distr=pnorm(range,mean=mean(wind),sd=sd(wind))

lines(range,distr, col="blue", lwd=2)



