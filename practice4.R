# vectors

c(3,4,5,6,7)
c(3:7)
c(7,3,5,4,6)

v1 <- c("K", "N", "O","U")
length(v1)

c(F, F, T)
c(FALSE, FALSE, TRUE)

seq(from=3, to=7, by=1)
seq(from=3, to=7, length=3)
seq(from=1, by=0.05, along=1:5)
seq(from=1, to=5, along=1:6)

rep(c(1,2), times=2)
rep(1:2, times=2)
rep(c(2,4), times=c(2,1))
rep(c(2,4), each=2)
rep(c(2,4,8), length=5)

v1 <- c(11:20)
v1[c(3,5)]
v1[v1>15]
v1>15
v1[c(-2,-4)]

v2 <- c(1:5)
replace(v2, 2, 6)
append(v2, 8, after=5)
v3 <- append(v2, 8, after=5); v3

x <- c(rep(3,3), seq(3,7,by=2), rev(seq(3,7,length=3)), rep(4,3)); x
sort(x)
rank(x)
order(x)

# Matrix

matr <- matrix(1:9, nrow=3); matr
length(matr)
dim(matr)

r1 <- c (1,2,3)
r2 <- c (4,5,6)
r3 <- c (7,8,9)
rbind(r1,r2,r3)

c1 <- c (1:3)
c2 <- c (4:6)
c3 <- c (7:9)
cbind(c1,c2,c3)

m1 <- 1:9
dim(m1) <- c(3,3); m1
dim(m1)

mat <- matrix(c(1:9), ncol=3, byrow = T); mat

mat[1,]
mat[,3]
mat[mat[,3] > 4, 2]
mat[2,3]

# Matrix Operations

height <- c(140, 155, 142, 175)
size.1 <- matrix(c(130,26, 110, 24, 118, 25, 112, 25), ncol=2, byrow=T, 
                 dimnames = list(c("Lee", "Kim", "Park", "Choi"), c("Weight", "Waist")))
size <- cbind(size.1, height); size # matrix size.1 + vector column
size

colmean <- apply(size, 2, mean); colmean
rowmean <- apply(size, 1, mean); rowmean
colvar <- apply(size, 2, var); colvar
rowvar <- apply(size, 1, var); rowvar

sweep(size, 2, colmean) # size - colmean for each element in columns
sweep(size, 1, rowmean) # size - rowmean for each element in rows
sweep(size, 1, c(1,2,3,4), "+")
sweep(size, 1, c(1,2,3,4), "-")

m1 <- matrix(1:4, nrow=2); m1
m2 <- matrix(5:8, nrow=2); m2

m1 * m2 # multiplication
m1 %*% m2 # product
solve(m1) # inverse
t(m1) # transpose
