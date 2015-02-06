# Author: Esmit Pérez
# Exploratory Data Analysis, Coursera exdata-011
# Date: Feb 5 2015

#Plot 1

# As per the wording of the project
# _ Your code file should include code for reading the data so that the plot can be fully reproduced_
# Invoking this file avoids copy pasting all the file reading/manipulation code
source("prepare.R")

# Defines the basic characteristics for this image
png(filename = "plot1.png", width = 480, height = 480)

# Create!
hist(x = plotData$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")

# close the device, this "dumps" the graph into the physical file.
dev.off()
