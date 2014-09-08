# Load data
source('scripts/load_data.R')

# Make plot
png(filename = "plots/plot3.png", width = 480, height = 480, units = "px")

plot(hpc.data$DateTime, hpc.data$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')

lines(hpc.data$DateTime, hpc.data$Sub_metering_2, col='red')
lines(hpc.data$DateTime, hpc.data$Sub_metering_3, col='blue')
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty='solid')

dev.off()
