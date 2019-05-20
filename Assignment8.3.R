siz = 31 # size n = 31
pb = 44.7/100 # 44.7%
#the above 2 variables are constant for the below operations

#A.	Find the probability that X is equal to 17
x = 17
dbinom(x,size = siz,prob = pb)

#B.	Find the probability that X is at most 13
x = 13
pbinom(x,size = siz,prob = pb)

#C.	Find the probability that X is bigger than 11
x = 11
pbinom(x,size = siz,prob = pb,lower.tail = F)

#D.	Find the probability that X is at least 15
x = 15
pbinom(x,size = siz,prob = pb,lower.tail = F)

#E.	Find the probability that X is between 16 and 19, inclusive
x = c(16:19) #X is between 16 and 19
sum(dbinom(x,size = siz,prob = pb))

#we can achive the above #E's same result by doing this below
x = c(19,15)
diff(pbinom(x,size = siz,prob = pb,lower.tail = F))