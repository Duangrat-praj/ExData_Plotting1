data <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE, 
                   as.is = c("Date", "Time", "Global_active_power","Global_reactive_power","Voltage",
                             "Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
                   na.strings="?")
subdata <- subset(data, data$Date=="1/2/2007" | data$Date =="2/2/2007")
subdata$Date <- as.Date(subdata$Date, format = "%d/%m/%Y")
subdata$datetime <- as.POSIXct(paste(subdata$Date, subdata$Time, format = "%d/%m/%Y %H:%M:%S"))
png("plot2.png", width=480, height=480)
plot(x=subdata$datetime, y=subdata$Global_active_power, xlab="", type="l", ylab="Global Active Power (kilowatts)")
dev.off()
