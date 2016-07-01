# to create the data set 
datatowork <- mutate(household_power_consumption, Date2 = dmy(household_power_consumption$Date))
datatowork <- mutate(datatowork, Day = day(Date2), Month = month(Date2), Year = year(Date2))
datatowork <- filter(datatowork, Year == 2007)
datatowork <- filter(datatowork, Month == 2)
datatowork <- filter(datatowork, Day == 1 | Day == 2)

# Plot 1
hist(datatowork$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (Kilowatts)")








