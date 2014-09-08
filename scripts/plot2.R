# Load data
source('scripts/load_data.R')

# Make plot
png(filename = "plots/plot2.png", width = 480, height = 480, units = "px")

plot(hpc.data$DateTime, hpc.data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()