#TOPIC 6 FUCNTION IN R

#4.1) SIMPLE FUNCTION IN R

#4.1.1 WITHOUT ARGUEMENT

#print square number from 1 to 5

new.function=function() 
		{
		for (i in 1:5)
		{
			print(i^2)
		}
		}

new.function() #To call the function


#4.1.2 WITH AN ARGUMENT

#Print squares of numbers in sequence

function2 = function(a)
		{
			for (i in 1:a)
			{
			b=i^2
			print(b)
			}
		}

function2(5)

#4.1.3 FOR A GIVEN DATA

#produce mean and variance uisng function in r

z=c(17.9,16.5,14.3,16.8,15.7,16.0,16.3,16.4)

function3=function(z)
	{
		Mean=mean(z)
		Variance=var(z)
		output= as.data.frame(c(Mean,Variance))
		rownames(output)=c("Mean","Variance")
		print(output)
	}

function3(z) 

#4.1.4 WITH 2 ARGUMENTS

function4=function(a,b)
	{
		result=a*b
		print(result)
	}

function4(9,9)

#4.2 FOR LOOP IN R

#Example 1: Produce sequence number from 1 to 5

for (i in 1:5)
{
	print(i)
}


#Example 2: Counting the number of even numbers in vector

x=c(2,5,3,9,8,11,6)
count = 0
for (i in x)
{
	if(i%%2 ==0)
	count=count+1
}
print(count)

#Example 3: Producing mean of a given dataset

z=c(17.9,16.5,14.3,16.8,15.7,16.0,16.3,16.4)

average=function(z)
{
	sum=0
	for (i in 1:length(z))
	{
		sum = sum+z[i]
		
	}
	zbar=sum/length(z)
	print(zbar)
}
average(z)

#Example 4: Refer to slide 11

t=c(1,2,3,4,5,6,7,8,9,10)

ex4=function(t)
{
	for(i in 1:length(t))
	{
		form=3*(exp(t))+(4.5*t)
	}
	output=as.data.frame(cbind(t,form))
	colnames(output)=c("Time", "Expression")
	print(round(output,2))
}

ex4(t)




