consumption<-read.table('household_power_consumption.txt',header=T,sep=';',colClasses=c("character","character",rep("numeric",7)),na.strings='?')

consumption$Date<-as.Date.character(consumption$Date,format='%d/%m/%Y')
consumption$Time<-as.character.POSIXt(consumption$Time)
period_consumption<-consumption[consumption$Date=="2007-02-01"|consumption$Date=="2007-02-02",]
png("plot2.png")
plot(as.POSIXct(paste(period_consumption$Date,period_consumption$Time)),period_consumption$Global_active_power,type='l',xlab='',ylab='Global Active Power (kilowatts)')
dev.off()