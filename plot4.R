
y<-read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE, dec=".")
x<-y[y$Date %in% c("1/2/2007","2/2/2007") ,]
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

#plot1
z<-as.numeric(x$Global_active_power)
plot(z,type="l",ylab="Global active power (kilowatts)",xlab="",xaxt='n')
axis(1,c(0,1450,2900),c("Thu","Fri","Sat"))

#plot2
z<-as.numeric(x$Voltage)
plot(z,type="l",ylab="Voltage",xlab="datatime",xaxt='n')
axis(1,c(0,1450,2900),c("Thu","Fri","Sat"))



#plot3
z<-as.numeric(x$Sub_metering_1)
plot(z,type="l",xlab="",ylab="Energy sub metering",xaxt='n',col="black")
axis(1,c(0,1450,2900),c("Thu","Fri","Sat"))
points(x$Sub_metering_2,type="l",col="red")
points(x$Sub_metering_3,type="l",col="blue")
legend("topright",lwd=2.5,bty="n",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#plot4
z<-as.numeric(x$Global_reactive_power)
plot(z,type="l",ylab="Global_reactive_power",xlab="datatime",xaxt='n')
axis(1,c(0,1450,2900),c("Thu","Fri","Sat"))


#write
dev.off()


