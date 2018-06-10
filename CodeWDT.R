#Start of the Project

#Loading the required library
library(ggplot2)

#Reading the File

stats <- read.csv("DemographicData.csv")


#Exploring the DataSet
str(stats)

head(stats)
tail(stats)

summary(stats)


#The Countries where internet users are less than 2%.
filter <- stats$Internet.users < 2
stats[filter,]

#The Countries where birth rate is greater than 40 and internet users are less than 2%
stats[stats$Birth.rate > 40 & stats$Internet.users <2,]

#qplot(data = stats, x= Internet.users)

#Visualizing the DataSet
qplot(data=stats,x= Internet.users, y = Birth.rate, color = Income.Group,size=I(2))

