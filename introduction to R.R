#Introduction to R
print("Hello World")

#how to install R Package
#Please set the Cran Mirror
#Choose any country

#To install the package
#Using the command
install.packages("MASS")
library(MASS)

#TRY
x = 40

#To check the type of object
is.numeric(x)
is.character(c)
str(x)

#To check for missing value
is.na(x)

M = c(10,NA,6,5,4,7)
is.na(M)

#Try aritmethic's operator
N=10
Y=2

N+Y #ADD
N-Y #MINU
N*Y #MULTIPLY
N/Y #DEVIDE
N%%Y #MODULUS

#RELATIONAL OPERATOR

N<Y
N>Y
Y == 2
Y!=10

#CAN BE USED AS A CALCULATOR
abs(N-Y) #Absolute value
sqrt(Y) #Square root
3^2
3^11
log(10)
pi
round(pi,2) #Round off to 2 decimal places
log(10)
log10(100)
floor(pi) #return value without points
ceiling(pie) #round off