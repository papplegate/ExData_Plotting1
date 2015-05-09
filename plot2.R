# plot2.R
# Patrick Applegate, patrick.applegate@psu.edu
# 
# Makes plot2.png.  

# Clear the workspace.  
rm(list = ls())
graphics.off()

# Read in the data.  
source('read_energy_data.R')

# And, make the plot.  
png('plot2.png', width = 480, height = 480)
plot(posix.times, sub.data[, 3], type = 'l', xlab = '', ylab = 'Global Active Power (kilowatts)')
dev.off()