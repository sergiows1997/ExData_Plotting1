## Plot 4

png('plot4.png')
par(mfrow = c(2,2))
with(consumption, { 
  plot(Datetime, Global_active_power, type = 'l', xlab = "", ylab = "Global Active Power")
  plot(Datetime, Voltage, type = 'l', xlab = "datetime", ylab = "Voltage")
  plot(Datetime, Sub_metering_1, xlab = "",ylab = "Energy sub metering", type = "n")
  lines(Datetime, Sub_metering_1)
  lines(Datetime, Sub_metering_2, col = 'red')
  lines(Datetime, Sub_metering_3, col = 'blue')
  legend("topright",lwd = 1, col = c('black','red','blue'), legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
  plot(Datetime, Global_reactive_power, type = 'l', xlab = "datetime", ylab = "Global Reactive Power")
  })
dev.off()

