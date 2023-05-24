#Q1
#Read and write data for structured , semi-structured and Unstructured file formats.

#Q2
#perform 5 different data manipulation operations for a dataset of your own choice

d1 <- read.csv("C:\\Users\\Raghavendra\\Desktop\\Equipment.csv")
print(d1)

#summary 
summary(d1)

#filtering
d1 <- read.csv("C:\\Users\\Raghavendra\\Desktop\\Equipment.csv")
print(d1)
filter(d1,firms>100)

d1 <- read.csv(file.choose())
d1
d1$GDP <- 0


#read structured data i.e, csv file
data <- read.csv("C:\\Users\\Raghavendra\\Desktop\\ManufactCosts.csv")
print(data)

#read semi-structured data i.e, xml file
install.packages("XML")
library(methods)
library(XML)
result<-xmlParse("C:\\Users\\Raghavendra\\Desktop\\input.xml")
result

#read unstructured data i.e, txt file
my_data <- read.delim("C:\\Users\\Raghavendra\\Desktop\\data.txt")
print(my_data)

md1<-read.delim("C:\\Users\\Raghavendra\\Desktop\\data.txt",header = FALSE)
print(md1)

