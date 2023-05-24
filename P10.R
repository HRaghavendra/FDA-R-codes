library(dplyr)
library(MASS)
View(survey)

#removing emptydata i.e., NA values
newsurvey<-na.omit(survey)
View(newsurvey)

#1
bar1<-table(newsurvey$Sex)
barplot(bar1,ylim=c(0,200),main="Male and Female participants",ylab="Frequency",
        col=c("green","orange"))

#2
bar2<-table(newsurvey$W.Hnd)
barplot(bar2,ylim=c(0,200),main="Left Handers and Right Handers",ylab="Count",
        col=c("blue","pink"))

#3
counts <- table(newsurvey$W.Hnd)
barplot(counts, main="Female Left Handers and Male Left Handers",ylab="count", 
        col=c("orange","cyan"),legend = rownames(counts), beside=TRUE)

#4
pie1<-table(newsurvey$W.Hnd=="Left")
new1<-newsurvey[newsurvey$W.Hnd=="Left",]
View(new1)
pie(pie1[,2],labels=pie1[,1],main="Pie Distribution of Smokers",
    col=c("aquamarine","pink","darkgoldenrod","khaki"),clockwise=TRUE)

#5
hist(newsurvey$Age,main="Age distribution",xlab = "Age range",ylab="Frequency",col = "skyblue")

#6
plot(newsurvey$Age,newsurvey$Wr.Hnd, pch=20,xlab="Age",ylab="Writing Hand span",col="red")

#7
boxplot(newsurvey$Pulse,xlab = "Pulse Rate",ylab = "Count",col = c("yellow"))
summary(newsurvey$Pulse)




#1
install.packages(ggplot2)
library(ggplot2)

#2
ggplot(newsurvey, aes(x=factor(Sex)))+geom_bar(stat="count", width=0.3, fill=c("orange","green"))+
  theme_minimal()+ggtitle("Male and Female participants")

#3
ggplot(newsurvey, aes(x=newsurvey$W.Hnd))+geom_bar(stat="count", width=0.3, fill=c("blue","red"))+
  theme_minimal()+ggtitle("Left Handers and Right Handers")

#4
newsur=newsurvey%>%filter(W.Hnd=="Left")
colours = c("pink","violet")
ggplot(ns2, aes(x=newsur$Sex))+geom_bar(stat="count", width=0.3, fill=colours)+
  theme_minimal()+ggtitle("Left Handers and Right Handers")

#5
data <- data.frame(group=pie2[,1],value=pie2[,2])
ggplot(data, aes(x="", y=value, fill=group)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)

#6
p <- ggplot(newsurvey,aes(x=Age))+geom_histogram()
p

#7
ggplot(newsurvey, aes(x=Age, y=Wr.Hnd))+geom_point(method=lm,  linetype="dashed",
                                                   color="orange", fill="red")+
geom_smooth(method=lm,linetype="dashed",color="green", fill="purple")
