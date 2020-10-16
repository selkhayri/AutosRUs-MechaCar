
MPG Regression
==============

To determine which variables/coeffcients provided a non-random amount of variance to the mpg values in the dataset, linear regression models were created and analyzed for the following combinations of independent variables:

* Combination 1: vehicle.length, vehicle.weight, spoiler.angle, ground.clearance, and AWD
* Combination 2: vehicle.length, vehicle.weight, spoiler.angle, and ground.clearance
* Combination 3: vehicle.length, vehicle.weight, and ground.clearance

The summary results of the the linear regression models generated above are as follows:

#### Combination 1:

<pre>
Call:
lm(formula = mpg ~ vehicle.length + vehicle.weight + spoiler.angle +
ground.clearance + AWD, data = mech_data, na.action = na.omit)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle.length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle.weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler.angle     6.877e-02  6.653e-02   1.034   0.3069    
ground.clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11
</pre>

#### Combination 2:

<pre>
Call:
lm(formula = mpg ~ vehicle.length + vehicle.weight + spoiler.angle + 
    ground.clearance, data = train_data, na.action = na.omit)

Residuals:
    Min      1Q  Median      3Q     Max 
-17.889  -4.346   1.079   5.766  15.060 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.058e+02  1.974e+01  -5.361 8.41e-06 ***
vehicle.length    6.341e+00  7.969e-01   7.957 7.01e-09 ***
vehicle.weight    3.940e-04  8.278e-04   0.476    0.638    
spoiler.angle     1.172e-01  7.918e-02   1.480    0.149    
ground.clearance  3.525e+00  6.456e-01   5.459 6.37e-06 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.857 on 30 degrees of freedom
Multiple R-squared:  0.7019,	Adjusted R-squared:  0.6621 
F-statistic: 17.66 on 4 and 30 DF,  p-value: 1.505e-07
</pre>

#### Combination 3:

<pre>
Call:
lm(formula = mpg ~ vehicle.length + vehicle.weight + ground.clearance, 
    data = mech_data, na.action = na.omit)

Residuals:
     Min       1Q   Median       3Q      Max 
-21.1845  -6.0392   0.1843   7.0213  17.6710 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.000e+02  1.455e+01  -6.874 1.41e-08 ***
vehicle.length    6.196e+00  6.632e-01   9.343 3.37e-12 ***
vehicle.weight    1.190e-03  6.946e-04   1.714   0.0933 .  
ground.clearance  3.522e+00  5.299e-01   6.647 3.09e-08 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.897 on 46 degrees of freedom
Multiple R-squared:  0.6936,	Adjusted R-squared:  0.6736 
F-statistic:  34.7 on 3 and 46 DF,  p-value: 7.089e-12
</pre>

### Conclusion
From the three linear regression models shown above, it is clear that the two variables which have a non-random amount of variance on the mpg values in the dataset are vehicle.length and ground.clearance, both of which have near-zero p-values in all the models explored. It is worth pointing out that the p-value of the intercept in all the models is very close to zero, indicating that the intercept is statistically significant which, in turn, means that there are other variables and factors that contribute to the variation in mpg rating that have not been included in the models. 


Summary Statistics of quantitative variables
=============================================

<pre>
Mean
  vehicle.length   vehicle.weight    spoiler.angle ground.clearance 
        15.01961       6154.14740         57.11654         12.71416 
Median
  vehicle.length   vehicle.weight    spoiler.angle ground.clearance 
        14.60441       5928.68989         58.54649         12.98081 
Variance
  vehicle.length   vehicle.weight    spoiler.angle ground.clearance 
    4.124538e+00     3.408059e+06     3.826526e+02     6.408586e+00 
Standard Deviation
  vehicle.length   vehicle.weight    spoiler.angle ground.clearance 
        2.030896      1846.092817        19.561509         2.531518 
</pre>

## Slope of the Linear Model

In all of the linear explored linear models, for the two independent variables which have a non-random amount of variance on mpg, there was a significant linear relationship between the two variables and mpg. The coefficients of the two variables were the following:

<pre>
. Combination 1:
vehicle.length: 6.267e+00 = 6.267
ground.clearance: 3.546e+00 = 3.546

. Combination 2:
vehicle.length: 6.341e+00 = 6.341
ground.clearance: 3.525e+00 = 3.525

. Combination 3:
vehicle.length: 6.196e+00 = 6.196
ground.clearance: 3.522e+00 = 3.522
</pre>

### Conclusion

As such, it can be concluded that the slope of the linear model cannot be considered to be zero.


## Linear model prediction of MPG for MechaCar prototypes


Following are the Coefficient of Determination values, Multiple R-squared and Adjusted R-squared, for all three possible combinations of independent variables:

<pre>
. Combination 1: Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
. Combination 2: Multiple R-squared:  0.7019,	Adjusted R-squared:  0.6621 
. Combination 3: Multiple R-squared:  0.6936,	Adjusted R-squared:  0.6736 
</pre>

### Conclusion

The combination with the best coefficients of determination is Combination 1, in which 71.49% of the variability in the mpg measures are explained by the independent variables. A confirmation of this fact is that the adjusted R-squared value is only slightly lower than R-squared, indicating that the model can accurately predict 68.25% of values of the dependent variable given the values of the independent variables. It is worth noting that, as mentioned earlier, with respect to the significance of the y-intercept, the fact that the adjusted R-squared value is less than the R-squared value indicates that there are some pertinent variables that have not been included in the models. As such, the linear model does predict mpg of the MechaCar prototypes reasonably effectively.


Suspension Coil Summary
=======================

The summary statistics for the suspension coil data are as follows:

### Summary Statistics - Individual lots
<pre>  
Lot1 --   Mean:  1500.01821019726   Median:  1500.20574462939   Variance:  1.1460236797714   Standard Dev:  1.07052495523056
Lot2 --   Mean:  1499.57090421265   Median:  1498.87294562232   Variance:  10.1315105640408   Standard Dev:  3.18300338737501
Lot3 --   Mean:  1499.00394679216   Median:  1497.98123296641   Variance:  220.010563245962   Standard Dev:  14.8327530568658
</pre>

### Summary Statistics - Combined
<pre>
All --   Mean:  1499.53102040069   Median:  1499.7465323533   Variance:  76.2345928674917   Standard Dev:  8.73124234387591
</pre>

### Conclusion

From the numbers above, it would appear that lots 1 and 2, having variances 1.15 and 10.13 respectively, do satisfy the design specifcations for the MechaCar suspension coils which dictates that the variance of the suspension coils must not exceed 100 pounds per inch. Lot 3, however, having a variance of 220.01, does not satisfy the design specification. The combined variance of all three lots put together is 76.23, which does satisfy the design specification. However, it is imperative that the process which produced lot 3 be closely examined to determine why the variance is so much larger than the design specifications allow.


Suspension Coil T-Test
======================

To determine if the suspension coil’s pound-per-inch results are statistically different from the mean population results of 1,500 pounds per inch, the one-sample t-test produces the following result:

<pre>
One Sample t-test

data:  susp_data$PSI
t = -0.65784, df = 149, p-value = 0.5117
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1498.122 1500.940
sample estimates:
mean of x 
 1499.531 

</pre>

### Conclusion

According to the results of the one-sample t-test, the desired mean of 1,500 pounds per square inch falls inside the 95% confidence interval. As well, the high p-value, 0.51, shows that we must fail to reject the null hypothesis and conclude that the sample mean is indeed equal to the desired mean of 1,500 pounds per square inch.