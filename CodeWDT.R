#Start of the Project

#Reading the File
#stringsAsFactors
stats <- read.csv("DemographicData.csv")


#Exploring the DataSet
str(stats)

head(stats)
tail(stats)

summary(stats)
str(stats)
levels(stats$Income.Group)
