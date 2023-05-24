library(MASS)
new_survey=na.omit(survey)
print(new_survey)

#1. Find the range of students’ age participated in the survey.
age<-new_survey$Age
range(age)

#2.Break the age range into non-overlapping sub-intervals by defining a sequence of equal distance break points of 10 by rounding the range to nearest integer
breaks<- seq(15,75,by=10)
age_brk<-cut(age,breaks,right=TRUE)
print(age_brk)

#3.Find the distribution of the age range according to the sub-intervals with cut with its right boundary opened. Display it in column form.
age_freq<-table(age_brk)
print(cbind(age_freq))

#4. Which age range of students has mostly and least participated in the survey.
print(which.max(age_freq))
print(which.min(age_freq))

#5.Similarly, find the frequency distribution of Wr.Hnd span and display it in column format.
write_hand_span<-new_survey$Wr.Hnd
range(write_hand_span)
breakspan<-seq(10,25,by=5)
wr_hnd_dist<-table(cut(write_hand_span,breakspan,right=TRUE))
print(cbind(wr_hnd_dist))

#6. Find the relative frequency of Wr.Hnd and display it by correcting to 3 decimal places.
options(digits = 3)
print(wr_hnd_dist/nrow(new_survey))


#7.Use the newsurvey data obtained by cleaning ‘na’ values in survey data of MASS package to do the following:

# 1.Find the average age of the students participated in the survey.
mean(new_survey$Age)
# 2.Compute the standard deviation and variance of the height of the students participated in the survey.
print(sd(new_survey$Height))
print(var(new_survey$Height))
# 3.Compute the quartile of write hand span
qt<-quantile(new_survey$Wr.Hnd)
print(qt)
# 4.Find the correlation between write hand span and pulse rate of the students.
cor(new_survey$Wr.Hnd,new_survey$Pulse,method="spearman")
# 5.Find the average age of the students based on how often the student exercises.
print((tapply(new_survey$Age,new_survey$Exer,mean)))
# 6.Find the standard deviation of height of the students under different categories of span of non-writing hand.
print((tapply(new_survey$Height,new_survey$NW.Hnd,sd)))
# 7.Obtain the summary statistics of pulse rate of the students.
summary(new_survey$Pulse)
