consumption<-read.table('household_power_consumption.txt',header=T,sep=';',colClasses=c("character","character",rep("numeric",7)),na.strings='?')

consumption$Date<-as.Date.character(consumption$Date,format='%d/%m/%Y')
consumption$Time<-as.character.POSIXt(consumption$Time)
period_consumption<-consumption[consumption$Date=="2007-02-01"|consumption$Date=="2007-02-02",]
png("plot3.png")
plot(as.POSIXct(paste(period_consumption$Date,period_consumption$Time)),period_consumption$Sub_metering_1,type='l',col='black',xlab='',ylab='Energy submetering',ylim = c(0,38))
par(new=T)
plot(as.POSIXct(paste(period_consumption$Date,period_consumption$Time)),period_consumption$Sub_metering_2,type='l',col='red',xlab='',ylab='Energy submetering',ylim=c(0,38))
par(new=T)
plot(as.POSIXct(paste(period_consumption$Date,period_consumption$Time)),period_consumption$Sub_metering_3,type='l',col='blue',xlab='',ylab='Energy submetering',ylim=c(0,38))
dev.off()