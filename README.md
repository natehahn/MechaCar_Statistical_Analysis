# MechaCar Statistical Analysis

### Summary

The following documentation covers linear regression modeling for mpg, summary statistics of coil spring production lots, and finally using the t-test to sample different lots to determine whether they all fall within 1500psi.

## Linear Regression to Predict MPG

![Linear Results](https://github.com/natehahn/MechaCar_Statistical_Analysis/blob/e1abe403eb87cb17a80ebf99b814baf7ff8e8a01/linear%20regression.png)

This is the result of running linear regression on the supplied spreadsheet of mpg data.  By looking at the data, we can immediate reject the null hypothesis and determine that there is a difference between mpg and the other variables, based on our p-value.  Of note, the variables with the most significnace of impacting miles per gallon are whether the vehicle has AWD, a spoiler, and the vehicle length.  The slope of the linear model is not zero due to the intercept having a negative correlation.  This type of model does provide an easy picture of MPG in relation to the provided variables.  By using this model you can easily identify where MPG can be gained or lost based on specific variables.

## Summary Statistics on Suspension Coils

![Summarize Results](https://github.com/natehahn/MechaCar_Statistical_Analysis/blob/3f07d37f1d6f734cfc2ef9f68d0d4368d2e95757/summarize.png)

![Lot summary](https://github.com/natehahn/MechaCar_Statistical_Analysis/blob/3f07d37f1d6f734cfc2ef9f68d0d4368d2e95757/Lot%20Summary.png)

The above tables show a summary of all of the data within the table and then breaks down that summary by lot numbers, in order to determine whether lots themselves are safe.  Based on the lot summary table, the manufacturing data shows that all lots fall within the perscribed guidelines that coils must not exceed 100psi.  I will not that the variance of lot three is at 170 but reviewing the data does not show where that variance lies.  

## Study Design: MechaCar vs Competition

Here we are identifying a new statistical study to compare MechCar with the competition.  In order to truly determine what makes MechaCar superior will be to compare HP with highway MPG, cost, and weight.  These variables are primary in determining whether you are getting the best bang for your buck.  In order to find MechCar the better purchase, our hypothesis is that HP will directly correlate to a lower weight of the vehicle, decent highway mileage all of which will translate to a great cost point.  Linear regression with the summary() function will be a simple method to compare the results.  Mean would be the primary value we are looking for. The data in question is the problem.  Finding relevant HP information for competitors cars, highway mileage for all vehicles, and all weights will not be overly difficult but will require plenty of research.

