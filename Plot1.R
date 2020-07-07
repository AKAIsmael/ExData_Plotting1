library(lubridate)
hhpc <- read.delim("household_power_consumption.txt",header= TRUE, sep=";")
hhpc <-  hhpc[(hhpc$Date=="1/2/2007") | (hhpc$Date =="2/2/2007" ),]
hhpc$Global_active_power<- as.numeric(hhpc$Global_active_power)
hhpc$Date <- dmy(hhpc$Date)
hist(hhpc$Global_active_power, col = "red",ylim=c(0,1200),main="Global Active Power", ylab="Frequency", xlab="Global Active Power (Kilowatts)")
dev.copy(png,"Plot1.png")
dev.off()
