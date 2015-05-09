# plot3.R
# Patrick Applegate, patrick.applegate@psu.edu
# 
# Makes plot3.png.  

# Clear the workspace.  
rm(list = ls())
graphics.off()

# Read in the data.  
source('read_energy_data.R')

# And, make the plot.  
png('plot3.png', width = 480, height = 480)
plot(posix.times, sub.data[, 7], type = 'l', xlab = '', ylab = 'Energy sub metering')
lines(posix.times, sub.data[, 8], col = 'red')
lines(posix.times, sub.data[, 9], col = 'blue')
legend('topright', legend = colnames(sub.data)[7: 9], col = c('black', 'blue', 'red'))
dev.off()