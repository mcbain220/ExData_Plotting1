# plot3.r
# Creates a line plot of the data set created by meter_reader.R.

png("./plot3.png")

plot(meter_data$Timestamp, meter_data$Sub_metering_1, type = "l", xlab="",ylab="Energy sub metering", main = "Submetering")

lines(meter_data$Timestamp, meter_data$Sub_metering_2, type = "l", col = "red")
lines(meter_data$Timestamp, meter_data$Sub_metering_3, type = "l", col = "blue")

legend("topright", pch= "-", col = c("black","red","blue"), legend = c("Sub 1", "Sub 2", "Sub 3"))

dev.off()