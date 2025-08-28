setwd("C:/Users/it24100654/Desktop/it24100654")
getwd()
Delivery_Times<- read.table("Exercise - Lab 05.txt",header=TRUE)
print(Delivery_Times)

hist(Delivery_Times$Delivery, 
     breaks = seq(20, 70, by = 5),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Times",
     ylab = "Frequency",
     col = "green",
     border = "black")


hist_data <- hist(Delivery_Times$Delivery,
                  breaks = seq(20 , 70 , by =5 ),
                  right = FALSE,
                  plot = FALSE) 
cumulative_freq <- cumsum(hist_data$counts)

plot(hist_data$mids, cumulative_freq,
     type="o",
     main="cumulative frequency polygeon (ogive)",
     xlab="Delivery Times",
     ylab="cumulative frequency",
     pch=16,
     col="red")
