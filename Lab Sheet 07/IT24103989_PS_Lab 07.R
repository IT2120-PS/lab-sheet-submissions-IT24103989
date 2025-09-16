setwd("C:\\Users\\Sajan Gunarathna\\Downloads\\IT24103989")
getwd()

# 1. Uniform : P(10 < X < 25)
prob1 <- punif(25, min=0, max=40, lower.tail=TRUE) - punif(10, min=0, max=40, lower.tail=TRUE)
print(prob1)

# 2. Exponential : P(X <= 2)
prob2 <- pexp(2, rate=1/3, lower.tail=TRUE)
print(prob2)

# 3. Normal 
# i. P(X > 130)
prob3_i <- 1 - pnorm(130, mean=100, sd=15, lower.tail=TRUE)
print(prob3_i)

# ii. 95th 
iq_95 <- qnorm(0.95, mean=100, sd=15, lower.tail=TRUE)
print(iq_95)