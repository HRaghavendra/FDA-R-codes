dim(die)<-c(2,3)
die
## [,1] [,2] [,3]
## [1,] 1 3 5

1:6
## 1 2 3 4 5 6

die <- 1:6
die
die <- c(1,3)
die
dim(die)<- c(1,2)
die
ar <- array(c(11:14,21:24,31:34), dim = c(2,2,3))
ar
ar <- array(c(11:14,21:24,31:34), dim = c(1,1,8))
ar

#Q1) Create 2 atomic vectors v1, v2. V1 has 3 elements 
#and v2 has 6 elements how can we create an array 
#of dimension 3x3x2.

v1 <- c(3,7,2)
v2 <- c(1,2,3,4,5,6)
t <- matrix(v1,v2,nrow=3)
t

v1 <- c(3,7,2)
v2 <- c(1,2,3,4,5,6)
ar = array(c(v1,v2), dim = c(3,3,2))
ar


#Q2) 2. For the R objects given in the below code add the dimension names rname, cn and mname and convert them into 3x3x2.
#rname <- c("r1","r2","r3")
#cname <- c("c1","c2","c3")
#mname <- c("mat1","mat2")

rname <- c("r1","r2","r3")
cname <- c("c1","c2","c3")
mname <- c("mat1","mat2")
ar1 = array(c(v1,v2), dim = c(3,3,2), dimnames = list(rname,cname,mname))
ar1

#3. For the 3x3x2 array created in the previous solution print the following
#a) printing the second row of second matrix
#b) Print the second column of the first matrix
#c) printing the element in the 2nd row and 3rd column of the second matrix
#d) printing the second matrix

ar1[2,,2]
ar1[,2,1]
ar1[,2,1]
ar1[2,3,2]
ar1[,,2]

#Q4) Create the following matrix which stores the name and suit of every card in a royal flush.

v<-c("ace", "king", "queen", "jack", "ten", "spades", "spades", "spades", "spades", "spades");
ar1 = array(c(v),dim = c(5,2,2))
ar1
#dim(v)<- c(5, 2);
#print(v)

#Q5) Many card game assign a numerical value to each card .for example in blackjack. Each face card is worth 10 points each number card is worth between 2 and 10 points and each ace is worth 1 or 11 points, depending on the final score. make a virtual playing card by combining "ace", "hear" and 1 into a vector. What type of atomic vector will result? check if you are right

c <- c("ace", "hearts", 1);
print(c)


#Q6)Split the 3x3x2 array A1, generated in the previous solution into two 3x3 matrices M1 and M2. Calculate M3 to be sum of M1 and M2. Sum all the elements of M1 and M2. Sum all the elements of A1 and find its mean.

m1 = ar1[,,1];
m2 = ar1[,,2];
m3 <- matrix(m1+m2,nrow=3);
print(m1);
print(m2);
print(m3);
mean = sum(m3)/length(m3);
print(mean)

v1 <- c(1,2,3);
v2 <- c(4,5,6,7,8,9);
V <- array(c(v1,v2),dim=c(3,3,2));
print(V)

m1<- matrix(data = 1:9, nrow = 3, ncol = 3, byrow = TRUE)  
m2 <- matrix(data = 1:9, nrow = 3, ncol = 3) 
m3<-m1+m2
m3
sum(m3)