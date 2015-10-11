data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c("character", "character", rep("numeric",7)))
d <- tbl_df(data)
con <- filter(d, Date == "1/2/2007" | Date == "2/2/2007")

png(filename="gap.png")
hist(con$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()