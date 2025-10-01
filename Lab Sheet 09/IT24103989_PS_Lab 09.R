setwd("C:\\Users\\Sajan Gunarathna\\Downloads\\IT24103989")
getwd()

#01
sample_data <- rnorm(25, mean = 45, sd = 2)
sample_data

#02
t_test_result <- t.test(sample_data, mu = 46, alternative = "less", conf.level = 0.95)
t_test_result

t_test_result$statistic
t_test_result$p.value
t_test_result$conf.int