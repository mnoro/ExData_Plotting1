## 00. Loads data  -----
source("gettingData.R")

## 03. Plot3
with(result, plot(date_time, Sub_metering_1, type = "l", col = "black",
                  ylab = "Energy sub metering",
                  xlab=""))
with(result, points(date_time, Sub_metering_2, type = "l", col = "red",
                    ylab = "Energy sub metering",
                    xlab=""))
with(result, points(date_time, Sub_metering_3, type = "l", col = "blue",
                    ylab = "Energy sub metering",
                    xlab=""))
legend("topright", pch = "_", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=
         0.5)

#

dev.copy(png, file = file.path(getwd(),"figure/Plot3.png"))
dev.off()
