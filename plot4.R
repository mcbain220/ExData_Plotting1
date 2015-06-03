# plot4.r
# Creates a line plot of the data set created by meter_reader.R.

png("./plot4.png")

par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))

plot(meter_data$Timestamp, meter_data$Global_active_power, type = "l",ylab = "Global Active Power (kilowatts)", xlab = "")

plot(meter_data$Timestamp, meter_data$Voltage, type = "l", ylab = "Voltage", xlab = "")


plot(meter_data$Timestamp, meter_data$Sub_metering_1, type = "l", xlab="",ylab="Energy sub metering", main = "Submetering")

lines(meter_data$Timestamp, meter_data$Sub_metering_2, type = "l", col = "red")
lines(meter_data$Timestamp, meter_data$Sub_metering_3, type = "l", col = "blue")

legend("topright", pch= "-", col = c("black","red","blue"), legend = c("Sub 1", "Sub 2", "Sub 3"))

plot(meter_data$Timestamp, meter_data$Global_reactive_power, type = "l", ylab = "Global Reactive Power", xlab = "")






dev.off()