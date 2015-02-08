library(sqldf)
data <- read.csv.sql("household_power_consumption.txt",
                     sql = 'select * from file where date = "1/2/2007"
                     or date = "2/2/2007"', sep = ";")
#head(data)
#tail(data)
#summary(data)

#Plot 1
png("plot1.png", width = 480, height = 480, bg = "transparent", units = "px")

hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")

dev.off()

