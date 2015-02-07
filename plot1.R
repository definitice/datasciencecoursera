p1=read.table("household_power_consumption.txt", sep=";", header=T, stringsAsFactors=F)
c=p1[p1$Date=="1/2/2007"|p1$Date=="2/2/2007",]

c$Global_active_power=as.numeric(c$Global_active_power)
c$Date=as.Date(c$Date, "%d/%m/%Y")
c$DT=strptime(paste(c$Date,c$Time), "%Y-%m-%d %H:%M:%S")

png("plot1.png", width=480, height=480)
hist(c$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.off()
