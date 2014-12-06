consumption<-read.table('household_power_consumption.txt',header=T,sep=';',colClasses=c("character","character",rep("numeric",7)),na.strings='?')

consumption$Date<-as.Date.character(consumption$Date,format='%d/%m/%Y')
consumption$Time<-as.character.POSIXt(consumption$Time)
period_consumption<-consumption[consumption$Date=="2007-02-01"|consumption$Date=="2007-02-02",]
png("plot1.png")
hist(period_consumption$Global_active_power,col='red',xlab='Global Active Power (kilowatts)',main='Global Active Power')
dev.off()