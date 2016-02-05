y<-read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE, dec=".")
x<-y[y$Date %in% c("1/2/2007","2/2/2007") ,]
z<-as.numeric(x$Global_active_power)

plot(z,type="l",ylab="Global active power (kilowatts)",xlab="",xaxt='n')
axis(1,c(0,1500,2900),c("Thu","Fri","Sat"))

dev.copy(png,file="plot2.png", width=480, height=480)
dev.off()
