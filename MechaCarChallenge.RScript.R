#DELIVERABLE 1:
  
#load packages
library(dplyr)

#load CSV
MechaCar_table <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#generate linear regression model & summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))

#DELIVERABLE 2:

#import and read in the Suspension_Coil.csv file as a table
coil_table <- read.csv(file='Resources/Suspension_coil.csv',check.names=F,stringsAsFactors = F)

#create a total_summary dataframe 
total_summary <- coil_table %>% 
  summarize(Mean=mean(PSI), 
            Median=median(PSI),
            Variance=var(PSI),
            SD=sd(PSI),
            .groups = 'keep')

#create a lot_summary dataframe grouped by manufacturing lot
lot_summary <- coil_table %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), 
            Median=median(PSI),
            Variance=var(PSI),
            SD=sd(PSI),
            .groups = 'keep')