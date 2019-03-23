
##read training data
##power_consumption <- read.csv("household_power_consumption.txt",header=TRUE,sep=";", dec=".")
##power_consumption_sub <- power_consumption[power_consumption$Date %in% c("1/2/2007","2/2/2007"),]

power_consumption_sub$Date_Time <- strptime(paste(power_consumption_sub$Date, power_consumption_sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

##plot(1,1)
plot(power_consumption_sub$Date_Time,as.numeric(power_consumption_sub$Global_active_power), type="l",xlab="", ylab="Global Active Power")

##plot(1,2)
plot(power_consumption_sub$Date_Time,as.numeric(power_consumption_sub$Voltage), type="l",xlab="datetime", ylab="Voltage")

##plot(2,1)
plot(power_consumption_sub$Date_Time,as.numeric(power_consumption_sub$Sub_metering_1), type="l",xlab="", ylab="Energy Sub Metering")
lines(power_consumption_sub$Date_Time,as.numeric(power_consumption_sub$Sub_metering_2), type="l",col="Red")
lines(power_consumption_sub$Date_Time,as.numeric(power_consumption_sub$Sub_metering_3), type="l",col="Blue")

##plot(2,2)
plot(power_consumption_sub$Date_Time,as.numeric(power_consumption_sub$Global_reactive_power), type="l",xlab="datetime", ylab="Global Reactive Power")
dev.off()
