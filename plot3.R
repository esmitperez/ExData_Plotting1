# Author: Esmit Pérez
# Exploratory Data Analysis, Coursera exdata-011
# Date: Feb 5 2015

#Plot 3

# As per the wording of the project
# _ Your code file should include code for reading the data so that the plot can be fully reproduced_
# Invoking this file avoids copy pasting all the file reading/manipulation code
source("prepare.R")

# Defines the basic characteristics for this image
png(filename = "plot3.png", width = 480, height = 480)

# Create!
with(plotData,{
        plot(x= date.time, y = Sub_metering_1, type="l", ylab = "Energy sub metering", xlab ="", col="black")
        lines(x= date.time, y = Sub_metering_2, type="l", col="red")
        lines(x= date.time, y = Sub_metering_3, type="l", col="blue")
        legend(x="topright", cex = 0.75 , c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"), lwd=1)
})

# close the device, this "dumps" the graph into the physical file.
dev.off()
