# Load data
source('scripts/load_data.R')

# Make plot
png(filename = "plots/plot4.png", width = 480, height = 480, units = "px")

par(mfrow=c(2,2))

plot(hpc.data$DateTime, hpc.data$Global_active_power, ylab='Global Active Power', xlab='', type='l')

plot(hpc.data$DateTime, hpc.data$Voltage, xlab='datetime', ylab='Voltage', type='l')

plot(hpc.data$DateTime, hpc.data$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(hpc.data$DateTime, hpc.data$Sub_metering_2, col='red')
lines(hpc.data$DateTime, hpc.data$Sub_metering_3, col='blue')
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty='solid', bty='n')

plot(hpc.data$DateTime, hpc.data$Global_reactive_power, xlab='datetime', ylab='Global_reactive_power', type='l')


dev.off()