setwd("C:\\Users\\Sajan Gunarathna\\Downloads\\IT24103989")
getwd()

# Question 1: Binomial 
n <- 50
p <- 0.85
prob_at_least_47 <- 1 - pbinom(46, size = n, prob = p)
cat("1. ii. P(X ≥ 47) =", round(prob_at_least_47, 4), "\n")


# Question 2: Poisson 
lambda <- 12
prob_exactly_15 <- dpois(15, lambda = lambda)
cat("2. iii. P(X = 15) =", round(prob_exactly_15, 4), "\n")