#data frames

df = data.frame(face = c("ace","two","six"),suit = c("clubs","clubs","clubs"),value = c(1,2,3))
df
#typeof
typeof(df)
class(df)
str(df)
#dimension 
dim(df)
#summary statistics
summary(df)
#top 6 rows
head(df)
#bottom 6 rows
tail(df)
#add or remove
data1 = data.frame(id = 1:3,weight = c(20,27,24))
names(df)
df
#question 
df1 = data.frame(rank = c(0.5,0.2,1),face = c("ace","two","six"),suit = c("clubs","clubs","clubs"),value = c(1,2,3))
df1
df1$slno = c(1,2,3)
df1

df1 = data.frame(slno = c(1,2,3),df1)
df1

#create a data frame which has 3 clumns 
#mark1 mark2 mark3 gained by 5 studs
#print the highest mark in each category with name

df2  = data.frame(name = c("DJtillu","Sastri","harry","chris","varun"),mark1 = c(100,92,73,64,75),mark2 = c(60,70,80,90,100),mark3 = c(70,75,85,90,97))
Max1 = df2$mark1[which.max(df2$mark1)]
Name1 = df2$name[which.max(df2$mark1)]
Max1
Name1


Max2 = df2$mark2[which.max(df2$mark2)]
Name2 = df2$name[which.max(df2$mark2)]
Max2
Name2

Max3 = df2$mark3[which.max(df2$mark3)]
Name3 = df2$name[which.max(df2$mark3)]
Max3
Name3

#creating the total column
df2["total"] = rowSums(df2[2:4])
df2


#printing the average
df2["average"] = rowMeans(df2[2:4])
df2

#high average student
HighAv = df2$name[which.max(df2$average)]
HighAv

#write an entry dataframe to a csv file

write.csv(Desktop,"marks1.csv")
write.csv(Desktop,"marks.csv",row.names = FALSE)

#question 1
#Define a table with the same type within a column and different types between 
#columns.Use data.frame() function

#solution
df3 = data.frame(type1 = c(1,2,3),type2 = c("harsha","vardhan","yathin"),type3 = c(2.64,6.78,8.97))
df3

#question 2
#Load mtcars dataset. View the data from mtcars. Select mpg,cyl,disp and hp.
#Create a new variable by summing the columns hp and disp. Combine all to create a 
#new table mtcars1. Select rows 4 to 10 to create a new table mtcars2

data(mtcars)
cars<-mtcars
mtcars
View(mtcars)
head(mtcars)
v1<-mtcars$mpg
v2<-mtcars$cyl
v3<-mtcars$disp
v4<-mtcars$hp
newvar<-mtcars$disp+mtcars$hp
mtcars1<-rbind(v1,v2,v3,v4)
mtcars1
mtcars2<-cbind(v1,v2,v3,v4)
mtcars2
#create variable 0bs_subset and store 4 to 10 columns
obs_subset<-mtcars[4:10,]
obs_subset

#question 3
#Create a new table subset3 which has the mpg and cyl columns and all rows where
#mpg is greater than 18

subset3<-subset(mtcars,mpg>18)[,c("mpg","cyl")]
subset3