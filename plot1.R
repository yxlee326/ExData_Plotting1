# read data and filter date to 2007-02-01 and 2007-02-02
data <- read.csv("./household_power_consumption.txt", header=T, sep=';', na.strings="?",quote='\"')
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

# plot. name: Global Active Power, x-axis: Global Active Power (kilowatts) y-axis: Frequency
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# save plot
dev.copy(png, file="./plot1.png", width=480, height=480)
dev.off()