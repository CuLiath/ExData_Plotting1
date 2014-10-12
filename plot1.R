allpowerdata <- read.csv2("./data/household_power_consumption.txt", na.strings = "?")
ourdata <- allpowerdata[allpowerdata[1] == "1/2/2007" | allpowerdata[1] == "2/2/2007", ]
ourdata[ , 1] <- as.Date(ourdata[, 1], "%d/%m/%Y")
png("plot1.png")
hist(as.numeric(ourdata$Global_active_power)/1000, xlab = "Global Active Power (kilowatts)", col = 554, main = "Global Active Power")
dev.off()