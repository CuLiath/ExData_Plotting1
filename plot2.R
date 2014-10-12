allpowerdata <- read.csv2("./data/household_power_consumption.txt", na.strings = "?")
ourdata <- allpowerdata[allpowerdata[1] == "1/2/2007" | allpowerdata[1] == "2/2/2007", ]
ourdata[ , 1] <- as.Date(ourdata[, 1], "%d/%m/%Y")
ourdata[, 10] <- as.POSIXct(paste(ourdata[, 1],ourdata[, 2])
png("plot2.png")
plot(ourdata$V10, ourdata$Global_active_power, pch = NA_integer_, xlab = "", ylab = "Global Active Power (kilowatts)")
lines(ourdata$V10, ourdata$Global_active_power, lty = 1)
dev.off()
