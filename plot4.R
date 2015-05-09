# plot4.R
# Patrick Applegate, patrick.applegate@psu.edu
# 
# Makes plot4.png.  

# Clear the workspace.  
rm(list = ls())
graphics.off()

# Read in the data.  
source('read_energy_data.R')

# And, make the plot.  
png('plot4.png', width = 480, height = 480)
par(mfrow = c(2, 2))
plot(posix.times, sub.data[, 3], type = 'l', xlab = '', ylab = 'Global Active Power')
plot(posix.times, sub.data[, 5], type = 'l', xlab = 'datetime', ylab = 'Voltage')
plot(posix.times, sub.data[, 7], type = 'l', xlab = '', ylab = 'Energy sub metering')
lines(posix.times, sub.data[, 8], col = 'red')
lines(posix.times, sub.data[, 9], col = 'blue')
legend('topright', legend = colnames(sub.data)[7: 9], col = c('black', 'blue', 'red'), bty = 'n')
plot(posix.times, sub.data[, 4], type = 'l', xlab = 'datetime', ylab = 'Global_reactive_power')
dev.off()