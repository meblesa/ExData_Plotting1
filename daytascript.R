#install packages
install.packages("tidyr")
install.packages("dplyr")

#load packages
library(tidyr)
library(dplyr)

#dowload data
filen<-"Data.zip"
fileURL<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL, filen, method="curl")
unzip(filen)

#Assign column names to data
#Columns description
#1 Date in format dd/mm/yyyy
#2 time in format hh:mm:ss
#3 household global minute-averaged active power (in kilowatt)
#4 household global minute-averaged reactive power (in kilowatt)
#5 minute-averaged voltage (in volt)
#6 household global minute-averaged current intensity (in ampere)
#7 energy sub-metering No. 1 (in watt-hour of active energy). 
# It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
#8 energy sub-metering No. 2 (in watt-hour of active energy). 
# It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
#9  energy sub-metering No. 3 (in watt-hour of active energy). 
# It corresponds to an electric water-heater and an air-conditioner.
  DATA<-read.table("household_power_consumption.txt")
  #separate by ";" and add coulumn names
  DATA1<-separate(data = DATA, col = V1, into = c("Date","Time","Active Power","Reactive Power","Voltage","Intensity","Sub-metering 1","Sub-metering 2","Sub-metering 3"), sep = ";")
  #Delete first row cause it has coulumn names from before
  Data2<-DATA1[2:2075260,]
  #filter the dates in scope
  Data3<-subset(Data2,Data2$Date == "1/2/2007" |Data2$Date=="2/2/2007")
  




