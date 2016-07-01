# to create the data set 
datatowork <- mutate(household_power_consumption, Date2 = dmy(household_power_consumption$Date))
datatowork <- mutate(datatowork, Day = day(Date2), Month = month(Date2), Year = year(Date2))
datatowork <- filter(datatowork, Year == 2007)
datatowork <- filter(datatowork, Month == 2)
datatowork <- filter(datatowork, Day == 1 | Day == 2)


#Plot 4
par(mfrow=c(2,2))
with(test, plot(finaltime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power"))
with(test, plot(finaltime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))
plot(test$finaltime, test$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(test$finaltime, test$Sub_metering_2, type = "l", col = "red")
lines(test$finaltime, test$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = "l", col=c("black","red", "blue"))
