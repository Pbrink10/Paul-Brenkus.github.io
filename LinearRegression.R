## Quiz #3

## Place a command to remove all variables from your environment at the very
## beginning of your script.
rm(list=ls())

## Download the file 2020.csv from Blackboard into your working directory
data<-read.csv("2020.csv")
## Original loading of data

## NOTE ## 
## For each model, include the following:
## A.) Your final model equation
## B.) An interpretation of important output statistics from the regression including:
## ## Your overall model test and whether it was statistically significant
## ## The R-Squared/Adjusted R-Squared in comments
## ## The results of the hypothesis test and an interpretation as to what it means.

## C.) Model diagnostics including statistics and visualizations:
## ## Assess linearity of each model
## ## Assess normality of residual distribution for each model
## ## Assess independence of errors for each model
## ## Assess heteroskedasticity for each model
## ## If outliers are present, name the most problematic outlier row(s) found in
## ## the initial model assessment in the comments
## ## Run the model with/without the most problematic outlier(s) to see if the model
## ## improves.
## ## Give a rationale for why you should keep the outliers or remove them from the
## ## interpretation of the model.

## Model 1
## Does GDP_Per_Capita predict Happiness?
## Test GDP_Per_Capita as the X-variable, and Happiness as the Y-Variable
## Save the model as Imhappy

#data<-data[-153,]
## Omitting point 153 (for Linear Model #2)

## Evaluate the data set for missing data and for numerical data types
summary(data)
str(data)
sum(is.na(data$GDP.per.capita))
sum(is.na(data$Happiness))

## Linear Model #1 & #2
lmhappy<-lm(Happiness~GDP.per.capita,data=data)
summary(lmhappy)

## Creating Linear Model and evaluating (Linear Model #1)
## F-Stat = 227.6
## P-Value = 2.2e-16
## R-Squared = 0.6012
## Adjusted R-Squared = 0.5986

## Creating Linear Model and Evaluating (Linear Model #2/Omitting Point #153)
## F-stat = 222
## P-value = 2.2e-16
## R-Squared = 0.5967
## Adjusted R-Squared = 0.594


## Linear Model #1 Equation
## Happiness = -1.19865 + 0.71774 * GDP.per.capita (Final Model Equation)

## For every 1 point increase of GDP.per.capita, Happiness will increase by 0.71774

## Linear Model #2 Equation (Omitting 153)
## Happiness = -1.06175 + 0.70416 * GDP.per.capita

## For every 1 point increase of GDP.per.capita, Happiness will increase by 0.70416

## Plotting Linear Models #1
plot(GDP.per.capita~Happiness,data=data)
abline(lmhappy,col="blue")
## There is a strong to moderately strong positive linear relationship.

par(mfrow=c(2,2))

## Plot Linear Model #1
plot(lmhappy)

## Plot Linear Model #2
plot(lmhappy)

plot(cooks.distance(lmhappy))
plot(lmhappy,which=c(4))
## 103, 153, 147, 152  possible discrepancies

hist(lmhappy$residuals,breaks=15)
## Linear Model #1 - Histogram shows that data has normal distribution.
## Slightly skewed left/skewed negatively

hist(lmhappy$residuals,breaks=15)
## Linear Model #2 - Histogram shows that data has normal distribution
## Slightly skewed left/skewed negatively

mean(lmhappy$residuals)
## Linear Model #1 (9.362972e-17)

mean(lmhappy$residuals)
## Linear Model #2  (-6.7196e-17)

##Hypothesis Test (Linear Model #1)
## 0.71774  0.04757  15.088  < 2e-16

## Hypothesis Test (Linear Model #2)
## 0.70416  0.04726  14.898  < 2e-16

library(lmtest)

lmtest::bptest(lmhappy)
## Linear Model #1 p-value = 0.3876
## This test shows that this data is "Homoskedastic" (>0.05), The Heteroskedastic Test Fails.

lmtest::bptest(lmhappy)
## Linear Model #2 p-value = 0.7053
## This test shows that this data is "Homoskedastic" (>0.05), The Heteroskedastic Test Fails.

## Summary
## The original model, without moving point "153", illustrated that this data is homoskedastic, with
## a BPTest of 0.3876 which fails the test for heteroskedsticity. If we were to remove the point
## "153", we would find that the p-value for the BPTest would increase to 0.7053 which proves that by 
## removing or omitting a point from our data set could continue to cause failure in our heteroskedastic
## testing. In conclusion it can be said that GDP can be used to predict Happiness. There are independent 
## errors as there are individual data points,and no x-variable depends on another x-variable. Lastly, it can
## be said that this model is most significant in predicting Happiness via GDP.
####################################################################################################################

## Model 2
## Test Perceptions.of.corruption as the X-variable, and Happiness as the Y-variable.
## Save the model as lmcorrupt

#data<-data[-150,]
## Omitting data point 150

sum(is.na(data$Perceptions.of.corruption))
## 0 missing data
sum(is.na(data$Happiness))
## 0 missing data

## Regresssion
lmcorrupt<-lm(Happiness~Perceptions.of.corruption,data=data)

summary(lmcorrupt)

## Creating Linear Model and evaluating (Linear Model #1)
## Residual Standard Error: 1.014 on 151 degrees of freedom
## F-Stat = 32.03 on 1 and 151 DF
## P-Value = 7.428e-08
## R-Squared = 0.175
## Adjusted R-Squared = 0.1695

## Creating Linear Model and evaluating (Linear Model #2, Omitted Point 150)
## Residual Standard Error: 0.9696 on 150 degrees of freedom
## F-Stat = 45.01 on 1 and 150 DF
## P-Value = 3.756e-10
## R-Squared = 0.2308
## Adjusted R-Squared = 0.2257

## Equation (Linear Model #1) (Final Model Equation)
## Happiness = 7.4205 - 2.6561 * Perceptions.of.corruption
## For every 1 point increase of Perceptions.of.corruption, Happiness will decrease by 2.6561

## Equation (Linear Model #2) ## Omitted point Linear Model
## Happiness = 7.7827 -3.1154 * Perceptions.of.corruption
## For every 1 point increase of Perceptions.of.corruption, Happiness will decrease by 3.1154

plot(Happiness~Perceptions.of.corruption,data=data)
abline(lmcorrupt,col="blue")
## Our plot (with/without omitted point) shows a moderately negative linear relationship.

## Model Diagnostics
par(mfrow=c(2,2))
plot(lmcorrupt)
plot(cooks.distance(lmcorrupt))
plot(lmcorrupt,which=c(4))

## Outliers found to be problematic are 153 and 150, though, 150 proves to be the most problematic
## due to its illustration on all 4 graphs.

hist(lmcorrupt$residuals,breaks=15,col="blue")
## For Linear Model #1 of "lmcorrupt", it was found to be slightly skewed left/negatively skewed.

hist(lmcorrupt$residuals,breaks=15,col="blue") ## Omitted Point Linear Model
## For Linear Modle #2 of "lmcorrupt", it was found to be slightly skewed left/negatively skewed.

mean(lmcorrupt$residuals) ## Linear Model #1 (1.757626e-16)
mean(lmcorrupt$residuals) ## Linear Model #2 (-1.229143e-16) Omitted Point Linear Model

##Hypothesis Test (Linear Model #1)
## -2.6561  0.4693  -5.659  < 7.43e-08

## Hypothesis Test (Linear Model #2)
## -3.1154  0.4644  -6.709  < 3.76e-10

library(lmtest)

lmtest::bptest(lmcorrupt)
## Linear Model #1 p-value = 0.08716
## This test shows that this data is "Homoskedastic" (>0.05), The Heteroskedastic Test Fails.

lmtest::bptest(lmcorrupt)## Omitted point Linear Model
## Linear Model #2 p-value = 0.3393
## This test shows that this data is "Homoskedastic" (>0.05), The Heteroskedastic Test Fails.

## Summary
## According to our data, I found that this was similar to the first model that we had ran.
## Saying that, it is accurate to say that original "lmcorrupt" data without removing a
## problematic point, was closer to 0.05 (0.08716), but, still failed to meet our heteroskedastic testing
## parameters. It was then found that after we removed our point "150" that our p-value
## in the BPtesting actually increased (0.3393), proving that, much like the first model we ran
## in this quiz, that by removing a problematic point, that we would still not test positive for
## heteroskedasticity. In conclusion it can be said that corruption negatively effects Happiness and
## can be used to predict happiness. There are independent errors as there are individual data points,
## and no x-variable depends on another x-variable. Lastly, it can be said that this model is statistically
## significant in the prediction of happiness via Perceptions of Corruption.
##################################################################################################################

## Model 3
## Test Generosity as the X-variable, and Happiness as the Y-variable.
## Save the model as "lmgenerosity"

sum(is.na(data$Generosity))
## 0 missing data
sum(is.na(data$Happiness))
## 0 missing data

## Regression
lmgenerosity<-lm(Happiness~Generosity,data=data)
summary(lmgenerosity)

## Creating Linear Model and evaluating
## Residual Standard Error: 1.113 on 151 degrees of freedom
## F-Stat = 0.7233
## P-Value = 0.3964
## R-Squared = 0.004767
## Adjusted R-Squared = -0.001824

## Equation 
## Happiness = 5.48061 + 0.50586 * Generosity (Final Model Equation)
## For every 1 point increase of generosity, Happiness will increase by 0.50586.

plot(Happiness~Generosity,data=data)
abline(lmgenerosity,col="blue")
## This graphs shows that there is a slightly/weak positive linear relationship

par(mfrow=c(2,2))
plot(lmgenerosity)
plot(cooks.distance(lmgenerosity))
plot(lmgenerosity,which=c(4))
## Possible problematic points/outliers could be 133 and 142. 

hist(lmgenerosity$residuals,breaks=20,col="green")
## According to the histogram, it can be said that our data looks very slightly skewed left/negatively skewed.

mean(lmgenerosity$residuals) ## (7.999003e-17)

##Hypothesis Test
## 5.48061  0.09042  60.61  <2e-16

library(lmtest)

lmtest::bptest(lmgenerosity)
## BP = 8.0811
## df = 1
## p-value = 0.004473
## This test shows that our data is Heteroskedastic (<0.05), Heteroskedastic Test Pass*

## Summary
## Due to the higher (>0.05) p-value when running our regression, it can be said that this data is
## not statistically significant. Meaning that instead of removing data points (outliers), we would in fact be more
## favorable to possibly adding data to our model or to give in to the fact that generosity simply is not significant
## to the increase of happiness. Also, it is shown that our p-value for our BPtest is lower than
## 0.05 (0.004473) meaning that it meets our criteria for heteroskedasticity and in fact, our model is 
## not simplistic and is not giving us a clear picture of how to determine what is going on. Lastly, there are 
## independent errors as there are individual data points,and no x-variable depends on another x-variable. In
## conclusion, it can be said that generosity can positively impact (linear relationship) happiness but
## cannot predict happiness according to our model.

####################################################################################################################
## Final Conclusion

## After running our 3 models, it can be determined that model #1 was the most significant
## in predicting Happiness. The next model to be most significant in predicting Happiness is
## model #2. Finally, due to the fact that generosity is not significant in predicting Happiness,
## model #3 comes in last.
