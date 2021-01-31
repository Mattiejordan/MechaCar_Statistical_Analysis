# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG

### Deliverable 1
```
Call:
lm(formula = MechaCar_mpg)

Residuals:
     Min       1Q   Median       3Q      Max 
-1.75545 -0.85291 -0.09242  0.47948  2.72615 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)       1.742e+01  1.284e+00  13.566  < 2e-16 ***
vehicle_weight   -1.700e-04  9.005e-05  -1.888   0.0656 .  
spoiler_angle    -9.066e-03  8.721e-03  -1.040   0.3042    
ground_clearance -4.638e-01  7.112e-02  -6.521 5.77e-08 ***
AWD               4.063e-01  3.335e-01   1.218   0.2296    
mpg               1.077e-01  1.127e-02   9.563 2.60e-12 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.15 on 44 degrees of freedom
Multiple R-squared:  0.7119,	Adjusted R-squared:  0.6791 
F-statistic: 21.74 on 5 and 44 DF,  p-value: 6.712e-11
```

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

### Deliverable 2

```
> Suspensiondata
     Mean Median Variance       SD
1 1498.78   1500 62.29356 7.892627
```

```
> SuspensionManLotsum
# A tibble: 3 x 5
  Manufacturing_Lot  Mean Median Variance     SD
* <chr>             <dbl>  <dbl>    <dbl>  <dbl>
1 Lot1              1500   1500     0.980  0.990
2 Lot2              1500.  1500     7.47   2.73 
3 Lot3              1496.  1498.  170.    13.0  
```

### Deliverable 3

Sample t-test for all Manufacturing Lots versus population means
```
	One Sample t-test

data:  Suspension_Coil$PSI
t = 0, df = 149, p-value = 1
alternative hypothesis: true mean is not equal to 1498.78
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
```

Manufacturing Lot 1 vs mean PSI of the population
```
	One Sample t-test

data:  subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
```
Manufacturing Lot 2 vs mean PSI of the population
```
	One Sample t-test

data:  subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2
```
Manufacturing Lot 3 vs mean PSI of the population
```
	One Sample t-test

data:  subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
```







### Deliverable 4

## Study Design: MechaCar vs Competition


