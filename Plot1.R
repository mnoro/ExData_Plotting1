## 00. Loads data  -----
source("gettingData.R")

## 00. Plotting Plot 1 ------

hist(result$Global_active_power, col = "red",
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = file.path(getwd(),"figure/Plot1.png"))
dev.off()
