# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![image1](https://github.com/JFoArlas/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_summary.png)

- *Vehicle Weight* & *Ground Clearance* provided a non-random amount of variance to the mpg values in the dataset. This means that both of those variables had an effect on mpg in the MechaCar.

- The slope of the linear model is not zero because the *p-value is 5.35e-11*, which is very low. A p-value below the significance level of .05 gives us sufficent evidence to reject the null hypothesis, and tells us that the slope of this linear model is not zero.

- This linear model could predict mpg of MechaCar prototypes relatively effectively given the *R-squared value of 0.7149*. This means that ~72% of the observed variation can be explained by the model's inputs.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). See below for a summary of the analysis of the manufacturing data located in Resources/Suspension_Coil.csv with R:

As a whole, the dataset does meet the design specification of <100 PSI variance, with a mean of ~62:

![image2](https://github.com/JFoArlas/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)

That said, when grouped by Lot, only lots 1 and 2 meet the design specification of <100 PSI variance. Lot 3 has a much higher PSI variance at ~170:

![image3](https://github.com/JFoArlas/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)