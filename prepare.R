# Author: Esmit Pérez
# Exploratory Data Analysis, Coursera exdata-011
# Date: Feb 5 2015

library(lubridate)

if (!file.exists("data/household_power_consumption.txt")){
        download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "household_power_consumption.zip", method = "curl")
        unzip(zipfile = "household_power_consumption.zip", exdir = "data", junkpaths = TRUE)
}else{
        message("Data already downloaded")
}

# Would like to treat rows as rows in a relational table, using sqldf for it.
if (!exists("plotData")){
        x <- read.table(file = "data/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = c("?"))
        subset <- x[x$Date == "1/2/2007" | x$Date == "2/2/2007",  ]
        subset$date.time <- dmy_hms(paste(subset$Date,subset$Time))
        plotData <<- subset[, c("date.time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")]
        rm(subset)
        rm(x)
}else{
        message("Subset data already exists, using that instead :)")
}