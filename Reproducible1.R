rep <- read.csv("activity.csv")
summary (rep)
str(rep)
# make date column Dates instead of Factor
rep$date <- as.character(rep$date)
rep$dates <- as.Date(rep$date, "%Y-%m-%d")

# Histogram of the total number of steps taken each day
library(ggplot2)
ggplot(data = rep, aes(dates, steps)) +
    stat_summary(fun.y = sum, geom = "bar")
