#plot 2
Data3<-subset(Data2,Data2$Date == "1/2/2007" |Data2$Date=="2/2/2007")
Data3[,1]<-as.Date(Data3[,1],format="%d/%m/%Y")

Data3[,"Date Time"]<-as.POSIXct(paste(Data3[,1],Data3[,2]), format="%Y-%m-%d %H:%M:%S")

png("plot2.png")

plot(Data3[,10],Data3[,3],type="l",xlab="",ylab="Global Active Power (kilowatts)")

dev.off() 