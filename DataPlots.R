## Part 1
library(dplyr)


## 1.) Read in the data from an online source at https://www.mldata.io/download-csv-weka/fobres_billionaire/ and save that file in a variable (name of your choice).

fileurl<-"https://www.mldata.io/download-csv-weka/forbes_billionaire/"


## 2.) Write a command to check to see if a Quiz2 folder exists inside your working directory.

file.exists("Quiz2")
## False


## 3.) Add the command to create a subdirectory to your working directory named Quiz2.

dir.create("Quiz2")
## True


## 4.) Write a command to list the files in your Quiz2 subfolder.

list.files("./Quiz2")
## character(0)


## 5.) Download that file into your subfolder and save it as billionaire.csv
download.file(fileurl,destfile="./Quiz2/billionaire.csv")
## Check directory for file "billionaire.csv"
list.files("./Quiz2")
## "billionaire.csv"


## 6.) Ensure the name and source are characters, while country_citizens is a factor.

billionaireData<-read.csv("Quiz2/billionaire.csv")
class(billionaireData$name)
class(billionaireData$source)
class(billionaireData$country_citizenship)
billionaireData[,5]<-as.factor(billionaireData[,5])
class(billionaireData$country_citizenship)

## 7.) View the head and the str of the billionaire data set.

head(billionaireData)
str(billionaireData)


## Part 2

## 1.) Download the csv file from Blackboard and save the file in a Quiz2 folder inside your working directory. Set the character variables to come in as factors
malldata<-read.csv("Quiz2/mall.csv",header=TRUE,stringsAsFactors=TRUE)
str(malldata)
fix(malldata)


## 2.) Evaluate the data missing values. In a comment tell how many and from which variable you found missing values.

questions<-filter(malldata,Spending.Score=="NA")
## There are 4 "NA" entries in the Spending.Score column
fix(malldata) ## Checking my code


## 3.) Write a command to omit any records with missing data from the mall data set.

malldata<-na.omit(malldata)
fix(malldata)## Checking my code


## 4.) Using the library "dplyr", filter the data set to only include those people who have an Age above 0.

malldata<-filter(malldata,Age>0)


## 5.) Get the final summary statistics from the data set.

summary(malldata)


## Part 3
library(ggplot2)

## 1.) Pull all pairs() of the mall dataset.

pairs(malldata)

## 2.) Using the ggplot2 package, create a scatter plot with the "mall" data set looking at Age as the X-variable and Spending.Score as the Y-variable.
## 3.) Make sure the method of the geom_smooth function is set to "lm"

ggplot(malldata, aes(x=Age,y=Spending.Score)) + geom_point(aes(),size=1) + geom_smooth(method="lm")


## 4.) Interpret in the comments - does the relationship between Age and Spending.Score generally look to be increasing, decreasing, or staying the same. Give your rationale.

## After analyzing the graph and having the "Linear Model" setting, I found that as "Age" increased, the "Spending.Score" decreased in a linear direction. 
## There are some outliers between the ages of 30-40 both above and below the linear line. After seeing this, it makes relative sense as to why it would move in a
## decreasing linear direction. During the 20-40 age range, many adults have jobs, children, and the socio-economic ability to buy or spend more. Unlike when an adult moves towards
## the age of retirement where money they had saved becomes more of a priority than the money they spend, leading to a decrease in their "Spending.Score".


## 5.)Create a box-plot using Spending.Score as the Y-variable, and Gender as the X-variable. Set the color argument to have two rainbow colors.

boxplot(Spending.Score~Gender,data=malldata,main="Gender vs. Spending.Score",
        xlab="Gender",
        ylab="Spending.Score",
        col=rainbow(2))


## 6.) In the comments, describe what you can infer about the difference in spending score of males and females.

## When looking at the box plot, I found that men spend less than women with fewer outliers. I also found that the Female mean is much lower with respect to their
## quarter 3 boundary when compared to their male counterparts. When it comes to spending behavior, it can be analyzed that the majority of the female gender, spends around the same amount
## as males (mean), but their are much higher outliers both above and below the mean for the female sex. On the other hand, men can be seen to have a majority near or close to the
## female mean and have a much lower set of outliers as well as a smaller amount of spending below their average amount for the male sex.


## 7.)Create a histogram of Annual.Income, using 10 rainbow colors, and 10 breaks.

hist(malldata$Annual.Income,breaks=10,col=rainbow(10),xlab="Annual.Income", main="Histogram of Annual.Income")
mean(malldata$Annual.Income)

## 8.)In the comments, describe if the data looks normal or skewed. Explain your answer.

## After analyzing the provided histogram, I found that it was skewed right. The histogram showed that with a mean of 61.21
## and points "tailing" off to the right, that the relative frequency dramatically dropped after the points were greater than
## 80 for Annual.Income.
