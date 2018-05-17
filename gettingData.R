## 00. Download and unzip file   --------------
file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(file_url, destfile = file.path(getwd(),"Data/data.zip"))
unzip(file.path(getwd(),"Data/data.zip"), exdir = file.path(getwd(),"Data/"))

## 01. Reads file  -----------
library(readr)
hpc <- readr::read_delim("Data/household_power_consumption.txt", 
                                          ";", escape_double = FALSE, trim_ws = TRUE)

## 02. Clean variables  -------------
library(dplyr)
library(tidyr)

# Change the date and filters for the specific dates
result <- hpc%>%
  unite(date_time, Date, Time, sep = " ") %>%
  mutate(date_time = as.POSIXct(date_time,format = "%d/%m/%Y %H:%M:%S")) %>%
  filter(date_time >= "2007-02-01" & date_time <= "2007-02-03 00:00:00")

# data ready to be used - result
