# MechaCar_Statistical_Analysis

![mechaCarImage](mechaCarImage.jpg)

## Linear Regression to Predict MPG

### Deliverable 1
```
Call:
lm(formula = mpg ~ vehicle_weight + spoiler_angle + ground_clearance + 
    AWD + vehicle_length, data = MechaCar_mpg)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11
```
Significant vales of ground clearance and vehicle length provided a non-random amount of variance to the mpg values in the dataset.
Is the slope of the linear model considered to be zero? Why or why not? Slope is not zero, null hypothesis is rejected. Intercept is not at zero.
P-value is significant (5.35e-11). 
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? The R-squared values hold about
70% of the variance of this model's data, yes it is a good prediction of mpg data points.

### Deliverable 2
## Summary Statistics on Suspension Coils
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

The design specs require PSI to be under 100 to be in spec.
Lots 1 and 2 were similar and small, lot3 is out of spec becuase it exceeded 100 pounds per square inch(170). The overall
variance of all three lots together is on the high end (62.29) but still in spec total under 100. 

### Deliverable 3
## T-Tests on Suspension Coils

Sample t-test for *all* Manufacturing Lots versus population means
```
	One Sample t-test

data:  Suspension_Coil$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
```

Manufacturing *Lot* 1 vs mean PSI of the population
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
Manufacturing *Lot 2* vs mean PSI of the population
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
Manufacturing *Lot 3* vs mean PSI of the population
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

Summary of t-test results across all manufacturing lots and for each lot

Lot 1 has p-value of 1 therefore accepts null hypothesis with population mean of 1500. 
Lot 2 has a p-value of (0.6) so it accepts the null hypothesis.
Lot 3 has the smallest p-value (0.041) with a mean furthest from 1500 therefore rejects null hypothesis.
Sample t-test for all the lots versus the mean of 1500 has an average of 0.06 therefore it also accepts the 
null hypothesis by a small margin. This is based on p-value acceptance of null hypotheses of 0.05 or greater.


### Deliverable 4

## Study Design: MechaCar vs Competition
```
MechaCar mpg summary
> MechaCarmpg_sum
     Mean   Median Variance       SD
1 45.1286 43.40039 242.4932 15.57219
```
By using the MechaCar Miles Per Gallon stats configured above I would next use the statistics of 
the competitor car's mpg data as mu to compare in a t-test. My null hypothesis would proclaim that 
the MechaCar mpg data is the same as the competitor's mpg data. The alternative hypothesis would 
show there are significant differences between the MechaCar mpg and the competitor mpg. With significant 
difference the null hypothesis would be rejected. 
