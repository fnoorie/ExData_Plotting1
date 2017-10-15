data_init<-read.csv("household_power_consumption.txt", sep=";", header =T)
data_subset<-subset(data_init, Date=="1/2/2007" | Date=="2/2/2007")
png("plot1.png")
hist(as.numeric(as.character(data_subset$Global_active_power)), 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red", main="Global Active Power")
dev.off()