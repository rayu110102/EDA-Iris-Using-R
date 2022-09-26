library(ggplot2)
library(corrplot)

# LOADING DATASET
data<-iris
data

# GETTING TO KNOW THE DATASET BETTER 
names(data)
dim(data)
str(data)
class(data)
head(data, n = 5)
tail(data, n = 5)

# SUMMARY OF THE DATA
## applying the necessary library for conducting the summary function
library(pastecs)
library(psych)
library(Hmisc)

##conducting the summary functions of the different library
summary(data)
describe(data)
summary.abund(data)
stat.desc(data)

#CHECKING NULL VALUES
is.na(data)
## after checking the dataset through is.na() we can conclude that the dataset does'nt contain any NULL value.

#DATA VISUALIZATION
## correlation of the data
pairs(data)

## SCATTER PLOT
plot(data$Sepal.Length,data$Sepal.Width)
### getting the error margins too large, to fix that we fixed the margins of the plot
par("mar")
par(mar = c(5,5,5,5))
### setting colors to the scatter plot for better understanding
colors<- c("red", "green")
plot(data$Sepal.Length, data$Sepal.Width, col = colors)
plot(data$Sepal.Length, data$Petal.Length, col = colors)
plot(data$Sepal.Length, data$Petal.Width, col = colors)
plot(data$Petal.Length, data$Petal.Width, col = colors)

## HISTOGRAM
hist(data$Sepal.Length, col = 'yellow')
hist(data$Sepal.Width, col = 'green')
hist(data$Petal.Length, col = 'red')
hist(data$Petal.Width, col = 'orange')

## BOXPLOT
boxplot(data$Sepal.Length)
boxplot(data$Sepal.Width)
### here we can see that sepal width has some outliers in it, as it is exceeding the maximum limit.
boxplot(data$Petal.Length)
boxplot(data$Petal.Width)

## HEATMAP
### for heatmap to work we needed numeric vector, so we converted our dataframe into a numeric matrix, as
a = data.matrix(data)
heatmap(a)
