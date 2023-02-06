## Plot 3

png('plot3.png')
  plot(consumption$Datetime, consumption$Sub_metering_1, xlab = "",ylab = "Energy sub metering", type = "n")
  lines(consumption$Datetime, consumption$Sub_metering_1)
  lines(consumption$Datetime, consumption$Sub_metering_2, col = 'red')
  lines(consumption$Datetime, consumption$Sub_metering_3, col = 'blue')
  legend("topright",lwd = 1, col = c('black','red','blue'), legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
dev.off()

