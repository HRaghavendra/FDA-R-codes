library(dplyr)
library(MASS)
View(survey)

#removing emptydata i.e., NA values
newsurvey<-na.omit(survey)
View(newsurvey)

newsurvey<-data.frame(survey)
newsurvey <- newsurvey[complete.cases(newsurvey),]
View(newsurvey)

#1
install.packages("dplyr")
library(dplyr)

#2
filter(newsurvey, newsurvey$Sex == "Male" & newsurvey$W.Hnd == "Left")

#3
filter(newsurvey, newsurvey$Sex == "Female" & newsurvey$W.Hnd == "Right" & Clap == "Right")

#4
filter(newsurvey, newsurvey$Exer == "None")

#5
newsurvey%>%dplyr::select(Sex,W.Hnd,Age)

#6
newsurvey1<-filter(newsurvey,newsurvey$Sex=="Female" & newsurvey$W.Hnd=="Left")
newsurvey1%>%dplyr::select(W.Hnd,Age,Pulse)



#part B
#1
install.packages("dplyr")
library(dplyr)

#2
male_left<-filter(newsurvey,newsurvey$Sex=="Male" & newsurvey$W.Hnd=="Left")
male_left%>%arrange(desc(Height))

#3
new_column<-newsurvey%>%select(Sex,NW.Hnd,Wr.Hnd)
new_column%>%mutate(hand_span=Wr.Hnd-NW.Hnd)

#4
Avg_tab <- filter(newsurvey , newsurvey$W.Hnd == "Left")
Avg_tab %>% group_by(Sex) %>% dplyr::summarise(Mean = mean(Wr.Hnd))

#5
max_pulserate <- filter(newsurvey, newsurvey$Sex == "Male")
max_pulserate %>% group_by(W.Hnd) %>% dplyr::summarise(Max = max(Pulse))
