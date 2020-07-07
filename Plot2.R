library(lubridate)
hhpc <- read.delim("household_power_consumption.txt",header= TRUE, sep=";")  #file read from the current directory
hhpc <-  hhpc[(hhpc$Date=="1/2/2007") | (hhpc$Date =="2/2/2007" ),]
hhpc$Global_active_power<- as.numeric(hhpc$Global_active_power)
hhpc$tme <- dmy_hms(paste(hhpc$Date, " ", hhpc$Time))
plot(x=hhpc$tme ,y=hhpc$Global_active_power,type ="l", ylab="Global Active Power (Kilowatts)", xlab = "")
dev.copy(png,"Plot2.png")
dev.off()

