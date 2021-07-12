#plot1
png("plot1.png") 
hist(as.numeric(Data3[,3]),
     main="Global Active Power",
     col = "red",
     xlab="Global Active Power (kilowatts)")
dev.off() 