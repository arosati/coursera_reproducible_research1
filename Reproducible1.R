rep <- read.csv("activity.csv")
summary (rep)
str(rep)
# make date column Dates instead of Factor
rep$date <- as.character(rep$date)
rep$dates <- as.Date(rep$date, "%Y-%m-%d")

# Histogram of the total number of steps taken each day
library(ggplot2)
sum<-ggplot(data = rep, aes(dates, steps)) +
    stat_summary(fun.y = sum, geom = "bar")
sum+ggtitle("Total Steps per Day")

#Mean number of steps taken each day
mean <-ggplot(data = rep, aes(dates, steps)) +
    stat_summary(fun.y = mean, geom = "bar")
mean+ggtitle("Mean Steps per Day")

#Median number of steps taken each day
#Time series plot of the average number of steps taken
#The 5-minute interval that, on average, contains the maximum number of steps
#Code to describe and show a strategy for imputing missing data
#Histogram of the total number of steps taken each day after missing values are imputed
#Panel plot comparing the average number of steps taken per 5-minute interval across weekdays and weekends
#All of the R code needed to reproduce the results (numbers, plots, etc.) in the report