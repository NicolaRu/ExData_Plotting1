y<-read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE, dec=".")
x<-y[y$Date %in% c("1/2/2007","2/2/2007") ,]
z<-as.numeric(x$Global_active_power)
hist(z,col="orange",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.copy(png,file="plot1.png", width=480, height=480)
dev.off()
