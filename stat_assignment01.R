# Problem 1

math_scores <- c(85, 92, 78, 90, 68, 88, 95, 72, 80, 75, 88, 92, 85, 90, 83,
                 79, 82, 87, 90, 93, 72, 85, 88, 78, 85, 90, 92, 80, 88, 85)  

summary(math_scores)

hist(math_scores, main="Math Score Histogram", xlab='Score')
boxplot(math_scores, main='Math Score Boxplot', ylab='Score')

# Problem 2

co2 <- c(450, 520, 480, 550, 510, 610, 470, 530, 570, 500, 
         580, 610, 490, 550, 420, 580, 440, 520, 600, 560,
         410, 540, 590, 530, 490, 570, 610, 470, 540, 590, 510)

freq_table <- table(cut(co2, breaks=seq(400, 650, by=50)))
print(freq_table)

barplot(freq_table, main='Distribution of atmospheric carbon dioxide concentration', 
        xlab='concentration(ppm)', ylab="frequency", 
        names.arg = c("400-450", "450-500", "500-550", "550-600", "600-650"))

# Problem 3 (P(X >= 550))

1 - pnorm(550, mean = 500, sd = 30)

# Problem 4

set.seed(2024)

p <- 0.7 # Population Ratio

sample_sizes <- c(10,20,50,75,100,200)
n_reps <- 1000

for (n in sample_sizes) {
  sample_props <- numeric(n_reps)
  for (i in  1:n_reps) {
    sample_data <- sample(c(1,0), size = n, replace = T, prob = c(p, 1-p))
    sample_props[i] <- mean(sample_data)
  }
  cat("Sample Size:", n, "\n")
  cat("Sample Ratio Mean", mean(sample_props), "\n")
  cat("Sample Ratio Standard Deviation", sd(sample_props), "\n\n")
}