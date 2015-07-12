setwd('C:/Users/Haojun Zhu/Desktop/project1')

# get the full dataset
data.raw = read.table('household_power_consumption.txt', sep=';', header=T, na.strings='?')
data.raw$Date = as.Date(data.raw$Date, format='%d/%m/%Y')

# subset the data
data.tidy = subset(data.raw, subset=(Date>='2007-02-01' & Date<='2007-02-02'))

# date time conversion
date_time = paste(as.Date(data.tidy$Date), data.tidy$Time)
data.tidy$Date_time = as.POSIXct(day)
