## Plot 2

png('plot2.png')
plot(consumption$Datetime, consumption$Global_active_power, type = 'l', xlab= "", ylab = "Global Active Power (kilowatts)")
dev.off()
