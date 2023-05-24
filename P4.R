install.packages("data.table")
library(data.table)

DT = data.table(
  ID = c("b","b","b","a","a","c"),
  a = 1:6,
  b = 7:12,
  c = 13:18
)

DT

#==================== 1 =====================

DataTable = data.table(name = c("a", "b", "c", "d"),
                       id = c(7, 0, 3, 4))
DataTable


stuid = c(2, 5, 3, 4, 6, 7, 4, 2, 0)
age = c(23, 45, 67, 23, 41, 43, 54, 67, 89)
sex = c(1, 1, 0, 0, 0, 1, 0, 1, 1)
stuinfo = data.frame(stuid, age, sex)
stuinfo

#==================== 2 =====================

order(stuid,na.last = TRUE)

order(stuid)
list(stuid,age,sex)

result.mean <- mean(stuid)
print(result.mean)

length(stuid)

fred <- list(happy = 1:3, name = "squash")
rep(fred, 2)

data <- rnorm(10)
data


#==================== 3 =====================

ex1<-data.frame(A=rnorm(4),B=rep(c("a","b"),each=2),C=rnorm(4))
ex1
ex2<-data.table(ex1)
ex2
ex2[1,]
ex2[1:3,]
ex2[,table(B)]
ex21<-data.table(x=c("a","a","b","c","d","d"),y=1:6)
ex22<-data.table(x=c("a","b","c"),y=14:16)
setkey(ex21,x)
setkey(ex22,x)
merge(ex21,ex22)
ex23<-data.table(x=rep(c("x","y"),each=4),y=rnorm(8))
setkey(ex23,x)
ex23["x"]

#==================== 4 =====================

DT = data.table(
  ID = c("b","b","b","a","a","c"),
  a = 1:6,
  b = 7:12,
  c = 13:18
)
DT
#which and with
which(DT == 10)
with(DT, a*b)

#roll and rollends
dt1 <- data.table(i=rep(1:2, 5), t=1:10, val1=1:10, key="i,t")
dt1
dt2 <- data.table(i=rep(1:3, 2), t=1:12, val2=1:12, key="i,t")
dt2
dt1[dt2,roll=TRUE]
dt2[dt1,roll=TRUE]
dt1[dt2, roll = T, rollends = c(T, T)] 
dt1[dt2, roll = T, rollends = c(F, F)] 

#.SD.SDcols
dt1 = data.table(x = c(1,2,3,4), y = letters[1:4])
dt1
dt2 = data.table(x = c(1,3,8,4,5), f = c("hi","yoo","hello","Morning","Namaste"), z = 
                   1001:1005)
dt2
setkey(dt2,x)
C = dt2[dt1, allow.cartesian=TRUE]
C
dt1[ , .SD]
dt2[ , .SD, .SDcols = c('x', 'f')]


#allow cartesian
(dt1 <- data.table(A = letters[rep(1:3, 2)], X = 1:6, key = "A"))
(dt2 <- data.table(A = letters[rep(2:4, 2)], Y = 6:1, key = "A"))
merge(dt1, dt2, allow.cartesian=TRUE)


bi <- data.table(id = LETTERS[1:10], a = sample(101:105, 10, replace = TRUE), b 
                 =sample(200:300, 10))
sm <- data.table(id = LETTERS[2:6],y = sample(1:5, 5, replace = TRUE), z = 
                   sample(10:20,5))
bi[sm, on = .(id)]
sm[bi, on = .(id), nomatch = NULL]


#==================== 5 =====================

install.packages("nycflights13")
library(nycflights13)
dt<-data.table(flights)
setnames(dt, c("arr_delay"), c("ad"))
dt

#
dt<-subset(dt,select=c("ad"))
dt

#
dt[month==5 & day==5]

#
dt[day!=1]