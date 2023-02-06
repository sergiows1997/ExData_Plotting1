## Plot 1

png('plot1.png')
hist(consumption$Global_active_power, breaks = 12, col = 'red', main = "Global Active Power", xlab = 'Global Active Power (kilowatts)')
dev.off()

