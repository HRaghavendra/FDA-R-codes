#Identify a dataset randomly, select any 2 notable attributes contributing heavily to the dataset, 
#using sample function, select 20 records from the chosen attributes and perform all the 
#3 types of correlation

#install packages
install.packages("datasets.load")
install.packages("dplyr")
install.packages("ggplot2")

library(datasets)
library(dplyr)
library(ggplot2)

#to find 2 notable attributes contributing heavily to the dataset
#we use summary and observe mean of the attributes: 
summary(iris)
#from that we got know Sepal.length and Petal.Length and greastest mean values

#to see first 20 rows:

data("iris")#To see the list of available datasets, use data() function. 
#All available datasets in R can be accessed by their explicit names.
head(iris, 20) #to get 1st 20rows
set.seed(100)#100 is some random number we can take any number 

#choose a random vector of 20 elements from all 150 rows in iris dataset:
#sample_rows <- sample(1:nrow(iris), 20)
#sample_rows

#choose the 20 rows of the iris dataset that match the row numbers above:
#sample <- iris[sample_rows, ]
#sample

c1 <- select(iris, Sepal.Length)
c2 <- select(iris, Petal.Length)
c3 <- head(c1,20) # to get 1st 20rows of attributes
c4 <- head(c2,20) 
c3
corr <- cor.test(x=c3$Sepal.Length, y=c4$Petal.Length, method = 'spearman')
corr

corr1 <- cor.test(x=c3$Sepal.Length, y=c4$Petal.Length, method = 'pearson')
corr1

corr2 <- cor.test(x=c3$Sepal.Length, y=c4$Petal.Length, method = 'kendall')
corr2

ggplot(iris) +aes(x=c3$Sepal.Length, y=c4$Petal.Length)+geom_point(colour = "#0c4c8a") +theme_minimal()

install.packages("readxl")
library("readxl")
hrr<- read_excel(file.choose())
hrr

corr <- cor.test(x=hrr$`Sepal Length`, y=hrr$`Petal Length`, method = 'spearman')
corr


corr1 <- cor.test(x=hrr$`Sepal Length`, y=hrr$`Petal Length`, method = 'pearson')
corr1








#info = data.frame(iris)
#Apply attributes function
#attributes(info)







#The use of set.seed is to make sure that we get the same results for randomization

#Randomization without set.seed
#sample(1:10)
#sample(1:10)
#sample(1:10)

#Randomization with set.seed
#set.seed(1)
#sample(1:10)
#set.seed(1)
#sample(1:10)
#set.seed(1)
#sample(1:10)

#so basically set.seed() is like assigning the a unique number to the randomized result
