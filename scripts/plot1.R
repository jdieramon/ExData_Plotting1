# Load data
source('scripts/load_data.R')

# Make plot
png(filename = "plot2.png", width = 480, height = 480, units = "px")

hist(hpc.data$Global_active_power, main='Global Active Power', xlab='Global Active Power (kilowatts)', col='red')

dev.off()