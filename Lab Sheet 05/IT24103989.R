setwd("C:\\Users\\it24103989\\Desktop\\IT24103989")
data <- read.table("Exercise - Lab 05.txt", header = TRUE)
names(data) <- c("Delivery_Time")
attach(data)

histogram <- hist(Delivery_Time, main = "Histogram for Delivery Times", breaks = seq(20, 70, length = 10), right = FALSE, xlab = "Delivery Time (minutes)")

breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids

classes <- c()
for (i in 1:(length(breaks)-1)) {
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}
freq_dist <- cbind(Classes = classes, Frequency = freq)
print(freq_dist)

plot(mids, freq, type = 'l', main = "Frequency Polygon for Delivery Times", xlab = "Delivery Time (minutes)", ylab = "Frequency", ylim = c(0, max(freq)))

cum_freq <- cumsum(freq)
new <- c()
for (i in 1:length(breaks)) {
  if (i == 1) {
    new[i] = 0
  } else {
    new[i] = cum_freq[i-1]
  }
}
plot(breaks, new, type = 'l', main = "Cumulative Frequency Polygon (Ogive)", xlab = "Delivery Time (minutes)", ylab = "Cumulative Frequency", ylim = c(0, max(cum_freq)))
cbind(Upper = breaks, CumFreq = new)
