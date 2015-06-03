# plot2.r
# Creates a line plot of the data set created by meter_reader.R.

png("./plot2.png")

plot(meter_data$Timestamp, meter_data$Global_active_power, type = "l", main = "Intraday Global Active Power", ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()