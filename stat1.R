# Basics

a = 1; b = 2; c = a+b; c; 

height = c(165,150,131)
height

d = 1:9; d #range

e = seq(1,9,2) # sequence
e

f = rep(10,5) # repeat
f

g = c(e,f) # concatenate
g

h = c(4:1, seq(0,9,3)) # range and sequence concat
h

e+f; e-f; e*f; e/f # component-wise operation

d+f; f+d # different lengths

i = 1:4
j = factor(i); as.factor(i); j # categorical object (Levels)
i + 1
j + 1 # not meaning for factors

k = as.character(1:4); mode(k); k
l = c("K", "N", "O", "U"); l 

m = i>2

# Matrix

n = rep(10,5)
o = 1:5
p = cbind(n, o); p
q = rbind(n, o); q

r = matrix(1:4, 2, 2); r
s = matrix(c(1,4,2,7),2,2)
r+s; r%*%s; solve(s)
s[1,2]
s[1,]
s[,2]

# Data Frame

name = c('kim', 'kee', 'p', 'c')
age = c(20,32,17,51)
sex = factor(c('m', 'f', 'f', 'f'))
dat = data.frame(name, age, sex)
dat$name
