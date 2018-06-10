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

#Creating Dataframe
my_df <- data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)
head(my_df)

#Changing the names of the Columns
colnames(my_df) <- c("Country","Code","Region")
head(my_df)

#Merging the Dataframes
head(stats)
head(my_df)
merged <- merge(stats,my_df,by.x = "Country.Code",by.y= "Code")
head(merged)s
merged$Country <- NULL
str(merged)

#Visualizing the DataSet Part 2
qplot(data=merged,x= Internet.users, y = Birth.rate, color = Region,size=I(2),
      shape=I(17),alpha=I(0.7),
      main="Birth Rate Vs Internet Users")
