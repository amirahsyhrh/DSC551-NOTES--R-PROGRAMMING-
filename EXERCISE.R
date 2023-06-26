#QUESTION 1
dat.AA = c(24,45,61,51,82)
average = mean(dat.AA) #average
dat.AA[4] #4th position
Z= c('A','B','B','D','M')
dat.BB = cbind(dat.AA,Z) #combine Z and dat.AA

#change or convert to data frame
dat.BB = data.frame(dat.BB)
str(dat.BB)
summary(dat.BB)
dat.BB$dat.AA = as.numeric(dat.BB$dat.AA)#to change into numeric
dat.BB$Z = as.factor(dat.BB$Z) #to change into factor
str(dat.BB)
summary(dat.BB)

#QUESTION 2
mon = c(100, 300, 220, 100)
tue = c(30, 20, 90, 20)
wed = c(40, 30, 100, 200)
thu = c(20,20,10,20)
fri = c(100, 150, 70, 90)
total.sales= rbind(mon, tue, wed, thu, fri) #according to row
colnames(total.sales) = c("week1", "week2", "week3", "week4")
#produce total sales for each week
total_sales = colSums(total.sales)
#produce total sales for each day
rowSums(total.sales)


#QUESTION 3
height = c(175, 165, 150, 155, 168, 153, 165, 177, 180, 164, 150)
weight = c(80, 85, 50, 55, 63, 45, 74, 90, 86, 74, 53)
sleep = c(8,7,12,10,9,7,6,7,8,8,11)

bmi = weight/(height/100)^2
bmi = round(bmi,2)

combine = cbind(height,weight,sleep, bmi)
combine = data.frame(combine)

summary(combine)







combine = data.frame(height,weight,sleep, bmi = weight/(height/100)^2)