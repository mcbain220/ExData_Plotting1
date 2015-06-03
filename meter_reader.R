# meter_reader.R
# This script reads in the Electric power consumption data located at
# the url below, and then creates multiple plots based on the Coursera
# Exploratory Data Analysis Course Project instructions.


# Download and read in full data set.  This will overwrite any files in WD.

meter_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(meter_url, "./household.zip",method="curl")
unzip("./household.zip")


meter_total_data <- read.table("./household_power_consumption.txt",sep=";", header=TRUE, 
                               na.strings="?",colClasses = c("character","character",
                                                             "numeric","numeric","numeric","numeric","numeric",
                                                             "numeric","numeric"))

# Transform Date field and create a Timestamp field.

meter_total_data$Date <- as.Date(meter_total_data$Date, "%d/%m/%Y")

meter_total_data$Timestamp <- paste(meter_total_data$Date, meter_total_data$Time)
meter_total_data$Timestamp <- as.POSIXct(meter_total_data$Timestamp, format = "%Y-%m-%d %H:%M:%S")

# Subset data down to 2/1/2007 & 2/2/2007

meter_data <- meter_total_data[(meter_total_data$Date == "2007-02-01" | meter_total_data$Date == "2007-02-02"),]

# create plots

source("./plot1.R")
print("plot1.png was created!")
source("./plot2.R")
print("plot2.png was created!")
source("./plot3.R")
print("plot3.png was created!")
source("./plot4.R")
print("plot4.png was created!")

