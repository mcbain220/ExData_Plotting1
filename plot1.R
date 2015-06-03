# plot1.r
# Creates a histogram plot of the data set created by meter_reader.R.

png("./plot1.png")

hist(meter_data$Global_active_power, xlab = "Global Active Power", main = "Global Active Power", col = "red")

dev.off()