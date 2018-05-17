## 00. Loads data  -----
source("gettingData.R")

## 00. Plotting Plot 1 ------
png("Plot1.png",width=480,height=480)

hist(result$Global_active_power, col = "red",
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
#

dev.off()
