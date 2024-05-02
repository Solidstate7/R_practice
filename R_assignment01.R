# 과제 2번

x <- c(2,0,2,4,5,7,1,0,1,1,2,8)

summary(x)
var(x)

y <- c(2,0,2,4,5,7,1,0,1,1,2,NA)

x + y
x - y

mean(y, na.rm = TRUE)
var(y, na.rm = TRUE)
median(y, na.rm = TRUE)

# 과제 3번
write.csv(USArrests, "USArrests.csv")

# 과제 4번

m1 <- cbind(x, y); m1
m1[12, 2] <- 500; m1
apply(m1, 2, mean)
