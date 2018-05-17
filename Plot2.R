## 00. Loads data  -----
source("gettingData.R")

## 00. Plot2

with(result, plot(date_time, Global_active_power, type = "l", col = "black",
                  main = "Global Active Power", ylab = "Global Active Power (kilowatts)",
                  xlab=""))

dev.copy(png, file = file.path(getwd(),"figure/Plot2.png"))
dev.off()
