# Get the dataset
hpc.data.url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'

if (!file.exists('household_power_consumption.txt')) {
    if (!file.exists('household_power_consumption.zip')) {
        download.file(url=hpc.data.url, method='curl', destfile='household_power_consumption.zip')
    }
    unzip('household_power_consumption.zip')
}    
    
# Read data into a table
hpc.data.colClasses <- c(rep('character', 2), rep('numeric', 7))
hpc.data <- read.table('household_power_consumption.txt', header=TRUE, sep=';', na.strings='?', colClasses=hpc.data.colClasses)

# Convert Date and Time
hpc.data$DateTime <- strptime(paste(hpc.data$Date, hpc.data$Time), "%d/%m/%Y %H:%M:%S")
hpc.data$Date <- as.Date(hpc.data$Date, "%d/%m/%Y")

# Subset required data
hpc.date.since <- as.Date("2007-02-01")
hpc.date.to <- as.Date("2007-02-02")
hpc.date.fits <- hpc.data$Date >= hpc.date.since & hpc.data$Date <= hpc.date.to
hpc.data <- subset(hpc.data, hpc.date.fits)

