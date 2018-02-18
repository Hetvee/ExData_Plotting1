
#reading the text file
mydata=read.table("household_power_consumption.txt", sep=";",header=TRUE, stringsAsFactors = FALSE,dec =".")
#subseting the data
data<-mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]
#Generating Plot1
global_Active_Power<-as.numeric(data$Global_active_power)
png("Plot1.png", width=480, height=480)
hist(global_Active_Power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
