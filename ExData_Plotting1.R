

##declare url and zip file name
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipFile <- "exdata_data_household_power_consumption.zip"

##download file
if(!file.exists(zipFile)){
        download.file(url,zipFile,method = "curl")
}

##unzip file
dataPath <- "exdata_data_household_power_consumption"
if(!file.exists(dataPath)){
        unzip(zipFile)
}

##read training data
power_consumption <- read.csv("household_power_consumption.txt",header=TRUE,sep=";", dec=".")
power_consumption_sub <- power_consumption[power_consumption$Date %in% c("1/2/2007","2/2/2007"),]

png("plot1.png", width=480, height=480)
hist(as.numeric(power_consumption_sub$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()




