png(file = 'plot2.png')
plot(Global_active_power ~ Date_time, data=data.tidy, type='l', xlab='', ylab='Global Active Power (kilowatts)')
dev.off()
