library(sqldf)
data <- read.csv.sql("household_power_consumption.txt",
                     sql = 'select * from file where date = "1/2/2007"
                     or date = "2/2/2007"', sep = ";")

#Plot 3
png("plot3.png", width = 480, height = 480, bg = "transparent", units = "px")

plot(data$datetime,data$Sub_metering_1,type="l", xlab="", ylab="Energy sub metering")
lines(data$datetime,data$Sub_metering_2, type="l", col = "red")
lines(data$datetime,data$Sub_metering_3, type="l", col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1,1), col = c("black","red","blue"))

dev.off()

