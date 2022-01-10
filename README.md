# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![image1](https://github.com/JFoArlas/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_summary.png)

- **Vehicle Weight** & **Ground Clearance** provided a non-random amount of variance to the mpg values in the dataset. This means that both of those variables had an effect on mpg in the MechaCar.

- The slope of the linear model is not zero because the **p-value is 5.35e-11**, which is very low. A p-value below the significance level of .05 gives us sufficent evidence to reject the null hypothesis, and tells us that the slope of this linear model is not zero.

- This linear model could predict mpg of MechaCar prototypes relatively effectively given the **R-squared value of 0.7149**. This means that ~72% of the observed variation can be explained by the model's inputs.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). See below for a summary of the analysis of the manufacturing data located in Resources/Suspension_Coil.csv with R.

**As a whole, the dataset's PSI variance of 62 is less than the 100, and therefore does meet the design specification:**

![image2](https://github.com/JFoArlas/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)

**That said, when grouped by Lot, only lots 1 and 2 meet the design specification of <100 PSI variance. Lot 3 has a much higher PSI variance at ~170:**

![image3](https://github.com/JFoArlas/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)

## T-Tests on Suspension Coils
### After performing t-tests on the suspension coil data, I found that the mean of the sample is 1498.78, with a p-value of .06. 

![image4](https://github.com/JFoArlas/MechaCar_Statistical_Analysis/blob/main/Resources/t.test_coil_table.png)

- Because that p-value is higher than .05, we do not have enough evidence to reject the null hypothesis. **So the PSI across all manufacturing lots is statistically similar to the population mean of 1,500 pounds per square inch.**

### I additionally performed t-tests on each lot individually.

![image5](https://github.com/JFoArlas/MechaCar_Statistical_Analysis/blob/main/Resources/t.test_lots1-3.png)

- After performing a t-test on lot 1, I found that it has a t-value of 0 and a p-value of 1, which indicates that the sample results exactly equal the null hypothesis. **So the PSI for lot 1 is equal to the population mean of 1,500 pounds per square inch.**

- After performing a t-test on lot 2, I found that the mean of the sample is 1500.2, with a p-value of .61. Because that p-value is higher than .05, we do not have enough evidence to reject the null hypothesis. **So the PSI for lot 2 is statistically similar to the population mean of 1,500 pounds per square inch.**

- After performing a t-test on lot 3, I found that the mean of the sample is 14,96.14, with a p-value of .04. Because that p-value is lower than .05, we do have enough evidence to reject the null hypothesis. **So the PSI for lot 3 is not statistically similar to the population mean of 1,500 pounds per square inch.**

## Study Design: MechaCar vs Competition
- To prove that MechaCar is a good value for the price, one could use **cost as the independent variable**, and other factors like **MPG, horse power, maintenance cost, & safety rating and independent variables**.
- Null hypothesis: MechaCar's performance relative to it's price is a good value.
- Alternative hypothesis: MechaCar's performance relative to it's price is not a good value.
- One could use multiple linear regression to test this hypothesis because there are 2+ variables to consider.
