## 00. Loads data  -----
source("gettingData.R")

## 00. Plot2
# Calculate new fields for timeseries
x <- sort(result$date_time)
with(result, plot(date_time, Global_active_power, type = "l", col = "black",
                  main = "Global Active Power", ylab = "Global Active Power (kilowatts)",
                  xlab=""))