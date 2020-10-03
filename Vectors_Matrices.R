## Problem 1
## Place a Command to remove all variables from your environment at the very beginning of your script
rm(list=ls())

## Problem 2
## A.) Create a vector named Vector1 containing 1,4,5,8, and 7 in that order.
## B.) Print the values of Vector1.
## C.) Write commands to calculate the min,max,mean of Vector1 using the appropriate functions.
## D.) Print only the 4th value in Vector1.

## A.)
Vector1<- c(1,4,5,8,7)

## B.)
Vector1

## C.)
min(Vector1)
max(Vector1)
mean(Vector1)

## D.)
Vector1[4]


## Problem #3
## Create a variable named MATRIX2 that contains a matrix with the following properties:
## A.) 8 Rows and 5 columns, with numbers 1 through 40 with 1 through 5 in row 1, 6-10 in row 2, ... and 36-40 in the last row, row 8.
## B.) Write a command to display Matrix2
## C.) Write a command to show the value in the 3rd row and 2nd column.

## A.)
MATRIX2<-matrix(c(1:40),8,5,byrow = TRUE)

## B.)
MATRIX2

## C.)
MATRIX2[3,2]


## Problem #4
## A.) Set the seed to 10
## B.) Create a variable x and save 100 random normal values in it with a mean of 75 and a standard deviation of 5.
## C.) Create a variable y and save 100 random normal values in it with a mean of 10 and a standard deviation of 1.
## D.) Plot x and y
## E.) Create a histogram of the x-values.

## A.)
set.seed(10)

## B.)
x<-rnorm(100,mean = 75,sd = 5)

## C.)
y<-rnorm(100,mean = 10,sd = 1)

## D.)
plot(x,y)

## E.)
hist(x)


## Problem #5
## A.) Write a command to list all the variables in the environment.
## B.) Write a command to remove MATRIX2 from the environment.
## C.) Create a variable, TIME, the saves the current system time.

## A.)
ls()

## B.)
rm(MATRIX2)

## C.)
TIME<-Sys.time()


## Problem #6
## A.) Access the ISLR library
## B.) Read the Portfolio data inot your global environment
## C.) Use a function to show the first 6 records of the Portfolio dataset
## D.) Write a command to display the number of rows and the number of columns in the Portfolio dataset.

## A.)
library(ISLR)

## B.)
data("Portfolio")

## C.)
head(Portfolio)

## D.)
data.frame(nrow(Portfolio),ncol(Portfolio))
## OR
dim(Portfolio)
