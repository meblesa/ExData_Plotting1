#plot 4
#see daytascript.R which contains the data download steps to get "Data2" dataset.
Data3<-subset(Data2,Data2$Date == "1/2/2007" |Data2$Date=="2/2/2007")
Data3[,1]<-as.Date(Data3[,1],format="%d/%m/%Y")

Data3[,"Date Time"]<-as.POSIXct(paste(Data3[,1],Data3[,2]), format="%Y-%m-%d %H:%M:%S")

png("plot4.png")

par(mfrow=c(2,2))

plot(Data3[,10],Data3[,3],type="l",xlab="",ylab="Global Active Power")

plot(Data3[,10],Data3[,5],type="l",xlab="datetime",ylab="Voltage")


plot(Data3[,10],Data3[,7],type="l",xlab="",ylab="Energy sub metering")
lines(Data3[,10],Data3[,8],type="l", col="red")
lines(Data3[,10],Data3[,9],type="l", col="blue")
legend(x = "topright",legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty = c(1,1,1),bty = "n",cex = 0.5)

plot(Data3[,10],Data3[,4],type="l",xlab="datetime",ylab="Global_reactive_power")

dev.off() 
