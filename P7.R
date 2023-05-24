#Create a function to print squares in sequence
f<-function(n)
{
  for(i in 1:n){
    res<-i^2
    print(res)}
}

n=as.integer(n)
f(n)

n=readline(prompt="Enter a Number: ")

r=readline(prompt="Enter a Number: ")
#function to print the area of the Circle
f<-function(r){
  area<-pi*r*r
  area=round(area,2)
  return(area)
}
r=as.numeric(r)
f(r)

l=readline(prompt="Enter a Number: ")
b=readline(prompt="Enter a Number: ")
#function to print the area of the Rectangle
f<-function(l,b){
  return(l*b)
}
l=as.numeric(l)
b=as.numeric(b)
f(l,b)

#Swapping two numbers using function
x=readline(prompt="Enter a Number: ")
y=readline(prompt="Enter a Number: ")
f<-function(x,y){
  print(paste("Before Swapping: X = ",x," and Y = ",y))
  temp=x
  x=y
  y=temp
  print(paste("After Swapping: X = ",x," and Y = ",y))
}
x=as.integer(x)
y=as.integer(y)
f(x,y)



#MASS Package
install.packages("MASS")
library("MASS")
View(survey)
str(survey)   #structure of the survey
df<-data.frame(survey)
df
#Class and Datatype 
class(df)
typeof(df)
class(survey)
typeof(survey)
nrow(survey)
ncol(survey)
dim(survey)
summary(survey)
colnames(survey)
head(survey,3)
tail(survey,2)


#3. Write a function to print the reverse of numbers from 1 to 20
reve = function()
{
  rev = seq(from = 20, to = 1)
  print(rev)
}
reve()

#Write a function with default arguments and perform like a calculator
cal = function(a,b=5)
{
  sum = a+b
  diff = a-b
  mult = a*b
  div = a/b
  mod = a%%b
  print(paste("Sum:",sum,", Difference:",diff,", Multiplication:",mult,", Division:",div,", Modulus:",mod))
}

a <- as.integer(a)
cal(a)

# 7. Write a function to perform matrix multiplication
matmul = function(mat1,mat2)
{
  mult = mat1%*%mat2
  print(mult)
}
mat1 <- matrix(c(2,1,3,4),nrow=2,ncol=2)
mat2 <- matrix(c(2,3,6,1),nrow=2,ncol=2)
matmul(mat1,mat2)

# 8. Write a function to print the elements of vector in 'a' that are not in 'b'
anotb = function(a,b)
{
  print(setdiff(a,b))
}
a <- c(1,2,3,4,5,6,7,8,9,0)
b <- c(2,4,6,8,0)
c<-c(1,2,4)
anotb(a,b)

# 9. Get 3 vectors during runtime from the user (A,B,C) and perform the following using functions
# i) A u B ii) A n B iii) A-B iv) An(BuC) v) Au(BnC)
vec = function(a,b,c)
{
  d = union(a,b)
  print("A Union B")
  print(d)
  e = intersect(a,b)
  print("A Intersection B")
  print(e)
  f = setdiff(a,b)
  print("A - B")
  print(f)
  g = union(b,c)
  fin = intersect(a,g)
  print("A Intersection ( B union C )")
  print(fin)
  h = intersect(b,c)
  fin2 = union(a,h)
  print("A Union ( B Intersection C )")
  print(fin2)
}
a2 <- strsplit(a2," ")
a2 <- as.integer(a2[[1]]) 
a2
b2 <- strsplit(b2," ")
b2 <- as.integer(b2[[1]]) 
b2
c2 <- strsplit(c2," ")
c2 <- as.integer(c2[[1]]) 
c2

vec(a2,b2,c2)


#Question 2
# 1)Read the content of 'Events.csv' in a data frame and view it.
res <- read.csv("C://Users//yathi//Downloads//l1//Events.csv", header = TRUE, sep = ",")
View(res)

res$Event2

#3)Use index number to retrieve the same data.
for(i in 1:20){
  print(res$Event2[i])
}

#4)Extract the score of third participant in event3.
res$Event3[3]

res[1:2,2:8]


#6)Display the names and total scores of all participants.
total=0
for (i in 1:20){
  print(res$Name[i])
  for(j in 2:7){
    if(res[i,j]>=25){
      total= total+25
    }
    else{
      total= total+0
    }
  }
  print(total)
  total=0
}

#7)Make the column "name" as the row index of the data frame.
rownames(res) <- res$Name
res

#8)Display the names of the students participated in event3.
for(i in 1:20){
  if(res$Event3[i]>=25){
    print(res$Name[i])
  }
}

#9)Obtain the names whose total score is above its average.
total=0
avg=0
for (i in 1:20){
  for(j in 2:7){
    if(res[i,j]>=25){
      total= total+25
    }
    else{
      total= total+0
    }
  }
  avg = avg + total
  total = 0
}
avg = avg/20
for (i in 1:20){
  for(j in 2:7){
    if(res[i,j]>=25){
      total= total+25
    }
    else{
      total= total+0
    }
  }
  if(total> avg){
    print(res$Name[i])
  }
  total=0
}