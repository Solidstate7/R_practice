setwd()
getwd()

x = c(1,2,3,4,5); x
y = c(10,20,30,40,50); y

z = scan()
a = scan(sep = ',')

edit(a)
iris

sink('printiris.txt')
summary(iris)
sink()

dat = cbind(x,y); dat
write.csv(dat, 'dat_test1.csv')
write.table(dat, 'dat_test2.txt')
read.csv('dat_test1.csv', header=T)
read.table('dat_test2.txt', header=T)

ls()
rm(list = ls())
