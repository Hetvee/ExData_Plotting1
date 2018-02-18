
#reading the text file
mydata=read.table("household_power_consumption.txt", sep=";",header=TRUE, stringsAsFactors = FALSE,dec =".")
#subseting the data
data<-mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]
#Generating Plot2
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
global_Active_Power<-as.numeric(data$Global_active_power)
png("Plot2.png", width=480, height=480)
plot(datetime, global_Active_Power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
