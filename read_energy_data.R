# read_energy_data.R
# Patrick Applegate, patrick.applegate@psu.edu
# 
# Reads in data from household_power_consumption.txt from the 
# UC Irvine Machine Learning Repository, http://archive.ics.uci.edu/ml/ .  

# Read in the data.  Note that hist() will barf on the numeric columns unless
# the type of data is specifically set using the colClasses argument.  
data <- read.table('household_power_consumption.txt', sep = ';', header = TRUE, na.strings = '?', colClasses = c(rep('character', 2), rep('numeric', 7)))

# Convert the first column of data to a true date.  
data[, 1] <- as.Date(data[, 1], format = '%d/%m/%Y')

# Extract just the data corresponding to the desired days.  
sub.data <- data[which(data[, 1] == '2007-02-01' | data[, 1] == '2007-02-02'), ]

# Make a vector of time stamp values from the first two columns of sub.data.  
# See http://stackoverflow.com/questions/11609252/r-tick-data-merging-date-and-time-into-a-single-object
posix.times <- as.POSIXct(paste(sub.data[, 1], sub.data[, 2]), format="%Y-%m-%d %H:%M:%S")