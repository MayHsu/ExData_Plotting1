##read training data
power_consumption <- read.csv("household_power_consumption.txt",header=TRUE,sep=";", dec=".")
power_consumption_sub <- power_consumption[power_consumption$Date %in% c("1/2/2007","2/2/2007"),]

power_consumption_sub$Date_Time <- strptime(paste(power_consumption_sub$Date, power_consumption_sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(power_consumption_sub$Date_Time,as.numeric(power_consumption_sub$Global_active_power), type="l",xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
