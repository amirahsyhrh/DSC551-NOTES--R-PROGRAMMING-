#DATA STRUCTURE - ORGANIZING DATA
#6 TYPES - VECTORS, FACTORS, MATRICES(famous), ARRAY, DATA FRAME(famous), LIST

#1) VECTORS
X = c(1,3,5,7,9)
is.vector(X) #to check whether data is in a from of vector
is(X)	#to cgeck the data type and structure

#To select the element of a vector
x=c(1,4,5,3,9,10,12)
print(x[5]) #to print the fifth element inside object x
print (x[1:3]) #to print the first until thrid element inside object x
print (x[c(1,2,3)]) #another way to print first - third

#replace the element
x[5] = 100 #replcae the 5th element with 100
edit(x)

y = x<8
#y= 1,4,5,3 nilai x yang less than 8
x[y]
x[x<8]

#remove the element
x[-2] #remove 2nd element

length(x) #to count on how many element inside object
x = edit(x) #another way to replace element

x[-c(1,2)] #to remove element in first and second place


#OPERATION IN VECTOR
x = c(1,3,5,7,9)
y = c(-1,-3,-5,-7,-9)
z = c(3,9)

#complete task slide 5

#Function in the vector
mean(x) #to calculate the mean
var (x) #to calculate the variance
sd (x) # to calculate the standard deviation
sum(x) #to calculate the sum of all elements
hist(x) #display histogram
cumsum(x) #cumulative summation
cumprod(x) #cumulation product/ hasil darab
diff(x)
identical(x,y) #not same value



#2) FACTORS
#used to represent categorical data
#used factor() function

opinion = factor(c("yes","yes","no", "yes", "no"))
is.factor(opinion) #to check whether is opinion

table(opinion)#to tabulate/summarize data accoding to class/group
unclass(opinion) #to see the classes’ level of data

#setting the level
opinion = factor(c("yes","yes","no", "yes", "no"))
opinion1= factor(c("yes","yes","no", "yes", "no"), label=c(0,1))

gender=factor(c("male", "female", "female", "female", "male"), label = c(2,1))
gender1 = factor(c(1,2,2,2,1), label = c("male", "female"))

#ordered function
blood.pres = ordered(c("Low", "Medium", "High", "Low", "Low", "Medium", "Low", "High"), levels = c("Low", "Medium", "High"))


#3) MATRICES

#Create matrices
#ist way: By using matrix(data,nrow,ncol) function


m = matrix(1:6, nrow=2, ncol=3) #by default, by column
n = matrix (1:6, nrow=2, ncol=3, byrow=T) #sort by row

#2nd way: Creating matrices from a vector using dim() function
x = c(2,4,6,8,10,12)
dim(x) = c(2,3) #creating matrix with 2 rows and 3 column

#3rd way: Creating matrices bt binding two or more vector using rbind() function or cbind()

k = 1:3
l = 10:12

matrix1= rbind(k,l) #according to row
matrix2 = cbind(k,l)#according to column

#How to extract the element
y = matrix(1:12, nrow=3, ncol = 4)
colnames(y) = c("a", "b", "c", "d")
rownames(y) = c("j","k","l")

y[1,3] #to select 1st row and 3rd column
y[,3]
y[-1,3] #dont want 1st row
y[c(1,3),4] #row 1 and 3, column 4
y[-1,-3] # no row 1 and column 3
y[-c(1,2),] # no row 1 and 2
y[,c(2,4)] #column 2 and 4
y[1,] # row 1

#matrices can do the computation
t() #transpose
det() #determinant
diag() #diagonal
solve() #inverse matrix
rowMeans()
colMeans()
apply()

x=matrix(c(4,5,6,7),nrow=2)
y=matrix(1:6, nrow=3)
z = matrix(c(10,20,30,40), nrow=2, byrow=T)

2*x
x+z

t(x)
det(x)
det(z)
solve(x)
rowMeans(x)
apply(z,1,mean)

#4) Array
#By using array() function

a=array(1:24,c(3,4,2))
is.array(a)

#convert vector into an array
x=1:36

b=array(x,dim=c(3,4,3))


#5) DATA FRAME
#creating a data frame

names=c("mira", "amirah", "upin", "ipin","opah", "hana")
gender=c("female", "female", "male", "male", "female", "female")
age= c(23, 34, 35, 33, 44, 22)
occupation= c("doctor", "farmer", "nurse", "teacher", "killer", "singer")

newdat = data.frame(names, gender, age, occupation) #USE THIS TO CONVER TO DATA FRAME

newdat1 = data.frame(cbind(names, gender, age, occupation))

#matrix to data frame

x = matrix(c(4,5,6,7), nrow=2)
colnames(x) = c("v1","v2")

data2 = data.frame(x) #convert form matrices to data frame
data2 = data.frame(x, v3 = c(TRUE, FALSE)) #add new data


#EXERCISE SLIDES 25

height = c(175, 165, 150, 155, 168, 153, 165, 177, 180, 164, 150)
weight = c(80, 85, 50, 55, 63, 45, 74, 90, 86, 74, 53)
sleep = c(8,7,12,10,9,7,6,7,8,8,11)

combine = data.frame(height,weight,sleep, bmi = weight/(height/100)^2)





