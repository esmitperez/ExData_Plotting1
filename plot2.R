# Author: Esmit Pérez
# Exploratory Data Analysis, Coursera exdata-011
# Date: Feb 5 2015

#Plot 2

# As per the wording of the project
# _ Your code file should include code for reading the data so that the plot can be fully reproduced_
# Invoking this file avoids copy pasting all the file reading/manipulation code
source("prepare.R")

# Defines the basic characteristics for this image
png(filename = "plot2.png", width = 480, height = 480)

# Create!
with(plotData, plot(x= date.time, y = Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab =""))  

# close the device, this "dumps" the graph into the physical file.
dev.off()
