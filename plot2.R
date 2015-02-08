library(sqldf)
data <- read.csv.sql("household_power_consumption.txt",
                     sql = 'select * from file where date = "1/2/2007"
                     or date = "2/2/2007"', sep = ";")


#Plot 2
png("plot2.png", width = 480, height = 480, bg = "transparent", units = "px")

data$datetime<-as.POSIXct(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")
plot(data$datetime,data$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
