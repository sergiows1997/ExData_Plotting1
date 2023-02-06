## Exploratory Data Analysis
## Week 1
## Course Project 1

## Download and unzip File
url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(url, 'electricconsumption.zip')
unzip('electricconsumption.zip')

## Call libraries needed
library(lubridate)

## Add data to a table
consumption <- read.table('household_power_consumption.txt', header = TRUE, sep = ";")

## Selecting only the working dates
consumption <- consumption[consumption$Date == "1/2/2007"| consumption$Date == "2/2/2007",]

## Checking structure of table
str(consumption)

## Correcting data types of columns
consumption$Datetime <- paste(consumption$Date, consumption$Time, sep = " ")
consumption$Global_active_power <- as.numeric(consumption$Global_active_power)
consumption$Global_reactive_power <- as.numeric(consumption$Global_reactive_power)
consumption$Voltage <- as.numeric(consumption$Voltage)
consumption$Global_intensity <- as.numeric(consumption$Global_intensity)
consumption$Sub_metering_1 <- as.numeric(consumption$Sub_metering_1)
consumption$Sub_metering_2 <- as.numeric(consumption$Sub_metering_2)

## Selecting columns needed
consumption <- consumption[3:10]

