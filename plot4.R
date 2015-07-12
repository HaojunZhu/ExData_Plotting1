png(filt='plot4.png')
par(mfrow=c(2,2))
with(data.tidy, {
  # top left
  plot(Global_active_power ~ Date_time, type='l', xlab='', 
       ylab='Global Active Power (kilowatts)')
  
  # top right
  plot(Voltage~Date_time, type='l')
  
  # bottom left
  plot(Sub_metering_1 ~ Date_time, type = "l", 
       ylab = "Global Active Power (kilowatts)", xlab = "")
  lines(Sub_metering_2 ~ Date_time, col = 'Red')
  lines(Sub_metering_3 ~ Date_time, col = 'Blue')
  legend('topright', col=c('black','red','blue'), lty=1, lwd=2, bty='n',
       legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
  
  # bottom right
  plot(Global_reactive_power ~ Date_time, type='l', xlab='')
})
dev.off()
