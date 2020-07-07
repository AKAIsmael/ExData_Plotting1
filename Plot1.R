library(lubridate)
temp <- tempfile()  #Download the file and read only the text file from the zipped folder
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
hhpc <- read.delim(unz(temp,"household_power_consumption.txt"),header= TRUE, sep=";") 
unlink(temp)
hhpc <-  hhpc[(hhpc$Date=="1/2/2007") | (hhpc$Date =="2/2/2007" ),]
hhpc$Global_active_power<- as.numeric(hhpc$Global_active_power)
hhpc$Date <- dmy(hhpc$Date)
hist(hhpc$Global_active_power, col = "red",ylim=c(0,1200),main="Global Active Power", ylab="Frequency", xlab="Global Active Power (Kilowatts)")
dev.copy(png,"Plot1.png")
dev.off()
