y<-read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE, dec=".")
x<-y[y$Date %in% c("1/2/2007","2/2/2007") ,]
z<-as.numeric(x$Sub_metering_1)

png("plot3.png", width=480, height=480)
plot(z,type="l",xlab="",ylab="Energy sub metering",xaxt='n',col="black")
axis(1,c(0,1450,2900),c("Thu","Fri","Sat"))
points(x$Sub_metering_2,type="l",col="red")
points(x$Sub_metering_3,type="l",col="blue")
legend("topright",lwd=2.5,bty="n",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
