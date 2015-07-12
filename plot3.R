png(file='plot3.png')
with(data.tidy, {
  plot(Sub_metering_1 ~ Date_time, type = "l", 
       ylab = "Global Active Power (kilowatts)", xlab = "")
  lines(Sub_metering_2 ~ Date_time, col = 'Red')
  lines(Sub_metering_3 ~ Date_time, col = 'Blue')
})
legend('topright', col=c('black','red','blue'), lty=1, lwd=2, 
       legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
dev.off()