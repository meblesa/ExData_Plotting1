#plot1
png("plot1.png") 
#see daytascript.R which contains the data download steps to get "Data3" dataset.
hist(as.numeric(Data3[,3]),
     main="Global Active Power",
     col = "red",
     xlab="Global Active Power (kilowatts)")
dev.off() 
