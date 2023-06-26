#WEEK 3: DATA MANAGEMENT#

#Sequence of a number using seq() function

seq(1,10)
1:10
seq(1,10,2) #increment by 2
seq(0,10,by=2) #increment by 2
seq(20,0,by=-5)#deducted by 5
seq(0,20,length=4) #data divided equally to 4 values
seq(0, 1, length.out = 11)#data divided equally to 11 values
seq(1,3,length.out=5)
seq(1,3,by=0.5)
seq(17) 

#Replication using rep(value,no.of times replication)

rep(5,10) #copy number 5 for 10 times
length(rep(5,10)) #panjang rep
rep(5,length=10)
x=rep(c(2,7,9),3) #repeat 2,7,9 for 3 times
y=rep(c(12,27,86),2)

#replicate 3 for 4 times, 9 for 6 times
rep(c(3,9),c(4,6))

#449992000055777
rep(c(4,9,2,0,5,7),c(2,3,1,4,2,3))

#322977777
rep(c(3,2,9,7),c(1,2,1,5))

k=rep(seq(5,20,by=4),10) #repeat 5 until 20 increment by 4 for 10 times


#Coercion

x<-1:24
is.vector(x)
is.numeric(x)
is.integer(x)
as.factor(x)
as.vector(x)
as.character(x)
as.numeric(x)
is(x)
typeof(x)
as.logical(x)
as.character(x)
as.numeric(x)



x=rep(seq(0,1),10)
x=matrix(x,nrow=4)

#to convert from matrices to array/dataframe
x=as.array(x)
x=as.data.frame(x)

#to change from data frame to vector
x=as.matrix(x)
x=as.vector(x)


#SORT,RANK,ORDER

#

s=c(10,15,6,13,18)
sort(s) #to sort in ascending order
sort(s,decreasing=T) #to sort in descending order
rev(sort(s)) #to sort in descending order
order(s) # the original place of each number 
rank(s) # the place for each number after sort

#APPLY to manipulate the data

a=matrix(1:24,nrow=6)
apply(a,1,mean) #row Mean
apply(a,2,sum) #column sum
rowMeans(a)#row Mean
colSums(a)#column sum


x=list(a=1:10,beta=exp(-3:3),logic=c(TRUE,FALSE,FALSE,TRUE))
lapply(x,mean)
lapply(x,sum)#return in list form
sapply(x,sum) #return in vector form


gender=factor(c("male","female","male","female","female"))
math.score=c(100,90,89,88,95)
tapply(math.score,gender,mean)

dat=as.data.frame(cbind(gender,math.score))
str(dat)

tapply(math.score,gender,sum)
tapply(math.score,gender,mean)


#IMPORT DATA

data(package=.packages(all.available=TRUE)) #to see all data in R
try(data(package="MASS")) #to see all data in package  MASS
data()
ls()
names()


mydata=road
ls(mydata)
names(mydata)
dim(mydata)
head(mydata,10) #produce the first 10 data
tail(mydata,10)#produce the last 10 data
summary(mydata)
var(mydata)
cor(mydata)
attach(mydata)
detach(mydata)

#FROM EXCEL
mydata1=read.csv(file.choose(),header=T)
str(mydata1)
attach (mydata1)
mydata1 <- corn.dat[order(-Year),]

mydata2=read.table(file.choose(),header=T)
summary(mydata2)

mydata2$Gender=as.factor(mydata2$Gender)
str(mydata2)

#to sort in descending order by Weight
newdata=mydata2[order(-weight),]




#Data Management in R

#Importing Data into R

#1)From R Package
data(package=.packages(all.available=TRUE)) #to see all the data inside R packages

try(data(package="MASS"))#to see all the data in package MASS

mydata=road

ls(mydata)
names(mydata)
dim(mydata)
head(mydata,10)
tail(mydata,10)
summary(mydata)
var(mydata)
cor(mydata)
attach(mydata)
detach(mydata)

#2)From external sources
#Excel (corn.csv)
corn.dat=read.table(file.choose(),header=T,sep=",")
attach(corn.dat)
new.dat <- corn.dat[order(-Year),]


#Text file (Mass.txt)

mass.dat=read.table(file.choose(),header=T)
summary(mass.dat)

apply(mass.dat,2,mean) #data frame always use 2
attach(bmi.dat)
bmi.dat <- data.frame(bmi.dat, bmi = 				  		           
				round(weight/((height/100)*(height/100)),2))
summary(bmi.dat)



#SPSS (BMI.sav)
library(foreign) #install this one 
bmi.dat=read.spss(file.choose(),to.data.frame=T)

#Missing data (miss.sav)

miss.dat=read.spss(file.choose(),to.data.frame=T)

#to check for missing value
miss1=is.na(miss.dat)

#to remove/ to omit the missing value

miss2=na.omit(miss.dat)









