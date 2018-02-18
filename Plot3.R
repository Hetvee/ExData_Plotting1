
#reading the text file
mydata=read.table("household_power_consumption.txt", sep=";",header=TRUE, stringsAsFactors = FALSE,dec =".")
#subseting the data
data<-mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]
#Generating Plot3
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Sub_metering_1<-as.numeric(data$Sub_metering_1)
Sub_metering_2<-as.numeric(data$Sub_metering_2)
Sub_metering_3<-as.numeric(data$Sub_metering_3)
png("Plot3.png", width=480, height=480)
plot(datetime, Sub_metering_1, type="l", xlab="", ylab=" Energy Submetering")
lines(datetime, Sub_metering_2,type = "l", col="red")
lines(datetime, Sub_metering_3,type = "l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
