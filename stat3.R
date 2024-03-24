# histogram

score<-c(93, 83, 91, 68, 75, 87, 89, 96, 97, 67, 83, 81, 87, 80, 64,
         83, 88, 76, 91, 78, 72, 80, 69, 80, 84, 71, 91, 81, 88, 73)

hist(score)
hist(score, main='')

rv<-c(0.8, 0.8, 0.8, 0.9, 0.9, 0.9, 0.9, 0.9,
      1, 1, 1.8,
      2, 2.1, 2.3, 2.4, 2.8, 2.9,
      3, 3.2, 3.3, 3.5, 3.8, 3.8, 3.9,
      4, 4.2, 4.4, 4.5,
      5.1, 5.3, 5.3, 5.4,
      14, 17, 18, 19,
      21, 21, 23, 25, 27, 28, 32, 34, 36,
      41, 42, 44, 48, 49,
      51, 54, 59, 60, 61, 62, 80,
      240)

hist(rv, main='', xlab="CRP", breaks=20)
hist(rv, main='', xlab="CRP", breaks=seq(0,240,20))

set.seed(2024)
rn <- c(rnorm(100,5,2), rnorm(100,10,2)); rn

hist(rn, main='', xlab="Random number", breaks=30)

# boxplot
age<-c(57, 61, 47, 57, 48, 58, 57, 61, 54, 50, 68, 51)
boxplot(age, ylab="Age")

member<-c(92, 107, 180, 90, 78, 91, 102, 88, 106, 125, 95, 102, 162)
boxplot(member, ylab='Number of board members')

# Stripchart
stripchart(age)

# Summary
x = c(1,2,3)

mean(x) # average
var(x) # variance
sd(x) # standard deviation
median(x) # middle value
sqrt(var(x)) == sd(x) 
fivenum(x) # mix, Q1, Median, Q3, max
IQR(x) # Interquartile Range
range(x) # min, max
sd(x) / mean(x) # coefficient of variation

mean(member)
var(member)
sd(member)
median(member)
fivenum(member)
IQR(member)
range(member)
sd(member) / mean(member)
