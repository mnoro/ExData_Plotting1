
## 00. Loads data  -----
source("gettingData.R")

# 04. Plot4
par(mfrow = c(2,2))
with(result, {
  plot(date_time, Global_active_power, type = "l", ylab = "Global Active power", xlab ="")
  plot(Voltage~ date_time, type = "l", xlab = "date time")
  plot(date_time, Sub_metering_1, type = "l", col = "black",
       ylab = "Energy sub metering",
       xlab="")
  points(date_time, Sub_metering_2, type = "l", col = "red",
         ylab = "Energy sub metering",
         xlab="")
  points(date_time, Sub_metering_3, type = "l", col = "blue",
         ylab = "Energy sub metering",
         xlab="")
  legend("topright", pch = "_", col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.5)
  plot(Global_reactive_power ~ date_time, type = "l", xlab = "date time", ylab = "Global Reactive Power")
  
})

dev.copy(png, file = file.path(getwd(),"figure/Plot4.png"))
dev.off()
par(mfrow = c(1,1))
