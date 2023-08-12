
# read data that date is 2007-02-01 and 2007-02-02
data <- read.csv("./household_power_consumption.txt", header=T, sep=';', na.strings="?",quote='\"')
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

# Converting dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

# Plot 2
plot(data$Global_active_power~data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

# saving plot 2
dev.copy(png, file="./plot2.png", width=480, height=480)
dev.off()