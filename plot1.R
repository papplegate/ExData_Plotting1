# plot1.R
# Patrick Applegate, patrick.applegate@psu.edu
# 
# Makes plot1.png.  

# Clear the workspace.  
rm(list = ls())
graphics.off()

# Read in the data.  
source('read_energy_data.R')

# And, make the plot.  
png('plot1.png', width = 480, height = 480)
hist(sub.data[, 3], col = 'red', main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency')
dev.off()