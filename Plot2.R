# to create the data set 
datatowork <- mutate(household_power_consumption, Date2 = dmy(household_power_consumption$Date))
datatowork <- mutate(datatowork, Day = day(Date2), Month = month(Date2), Year = year(Date2))
datatowork <- filter(datatowork, Year == 2007)
datatowork <- filter(datatowork, Month == 2)
datatowork <- filter(datatowork, Day == 1 | Day == 2)


# Plot 2

datatowork <- mutate(datatowork, finaltime2 = as.POSIXct.date(finaltime))
datatowork <- mutate(datatowork, finaltime = dmy_hms(finaltime))
with(datawork, plot(finaltime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (Kilowatts)"))

