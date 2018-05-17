## 00. Loads data  -----
source("gettingData.R")

## 00. Plot2
png("Plot2.png",width=480,height=480)
with(result, plot(date_time, Global_active_power, type = "l", col = "black",
                  main = "Global Active Power", ylab = "Global Active Power (kilowatts)",
                  xlab=""))

dev.off()
