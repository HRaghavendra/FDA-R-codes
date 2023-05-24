#EXERCISE 6
#import the package mass

install.packages("MASS")
library(MASS)
View(survey)

#list the row of data that has missing values

new_DF <- survey[rowSums(is.na(survey)) > 0,]
new_DF

#Create a data frame that contains survey data after removing na values
df2  = survey[complete.cases(survey), ]
df2

#how many male and female have participated in the survey

#Male
nMale = sum(with(df2,Sex == "Male"))
nMale
#Female
nFemale = sum(with(df2,Sex == "Female"))
nFemale

#how many left and right handers are there

nLeft = sum(with(df2,W.Hnd == "Right"))
nLeft
nRight = sum(with(df2,W.Hnd == "Left"))
nRight

#FInd the relative frequency distribution of left and right handers and display them with precision of two decimal places

lhd = df2$W.Hnd  
lhd.freq = table(lhd) 
lhd.relfreq = lhd.freq / nrow(df2)
lhd.relfreq
round(lhd.relfreq, digits=2)

#Display the male left hander and femals left hander in column format

df4 = subset(df2,(Sex == "Male" | Sex == "Female")&W.Hnd == "Left")
df4

#what percentage of male left hander never smokes

# Creating a subset with only Male 
df3 = subset(df2,Sex == "Male" & W.Hnd == "Left")
df3

#Now counting the no.of males who never smokes from subset
nSmoke = sum(with(df3,Smoke == "Never"))
nSmoke

#percentage 
per = (nSmoke/nMale)*100
per

