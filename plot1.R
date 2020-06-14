data <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE, 
                   as.is = c("Date", "Time", "Global_active_power","Global_reactive_power","Voltage",
                             "Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
                   na.strings="?")
subdata <- subset(data, data$Date=="1/2/2007" | data$Date =="2/2/2007")
png(file = "plot1.png", width=480, height=480)
hist(subdata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
