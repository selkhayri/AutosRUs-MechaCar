library(tidyverse)

###########################
#
# MPG Regression
#
###########################

# Load the MechaCar_mpg dataset
dataset <- 'MechaCar_mpg.csv'
mech_data <- read.csv(dataset)

# Show the first few records of the mech_data dataframe
print(head(mech_data))

# Perform Multiple Linear Regression Analysis
# Use vehicle.length, vehicle.weight, spoiler.angle, ground.clearance, and AWD
mlr <- lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data = mech_data, na.action=na.omit)

# Display the summary statistics of the model
print(summary(mlr))

# Perform Multiple Linear Regression Analysis - Another combination
# Use vehicle.length, vehicle.weight, spoiler.angle, ground.clearance
mlr <- lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data = mech_data, na.action=na.omit)

# Display the summary statistics of the model
print(summary(mlr))

# Perform Multiple Linear Regression Analysis - Yet Another combination
# Pare down independent variables to vehicle.length, vehicle.weight, and ground.clearance
mlr <- lm(mpg ~ vehicle.length + vehicle.weight + ground.clearance, data = mech_data, na.action=na.omit)

# Display the summary statistics of the model
print(summary(mlr))

# Summary statistics of quantitative variables
quantitative <- mech_data[,c("vehicle.length","vehicle.weight","spoiler.angle","ground.clearance")]

print("Suummary Statistics of quantitative variables")
print("=============================================")
print("Mean")
print(sapply(quantitative,mean))
print("Median")
print(sapply(quantitative,median))
print("Variance")
print(sapply(quantitative,var))
print("Standard Deviation")
print(sapply(quantitative,sd))


###########################
#
# Suspension Coil Summary
#
###########################

# Load the Suspension_Coil dataset
dataset <- 'Suspension_Coil.csv'
susp_data <- read.csv(dataset)

# Display the first few records of the Suspension_Coil dataset
print(head(susp_data))

# Separate the Suspension_Coil data into three parts based on the Manufacturing_Lot column: Lot1, Lot2, and Lot3
lot1 <- susp_data[susp_data$Manufacturing_Lot == "Lot1",]$PSI
lot2 <- susp_data[susp_data$Manufacturing_Lot == "Lot2",]$PSI
lot3 <- susp_data[susp_data$Manufacturing_Lot == "Lot3",]$PSI

# stats
# -----
# This function outputs to the terminal the mean, median, variance, and standard deviation of the data column that is passed in.
stats <- function(col,colname) {
  m_mean <- paste("Mean: ",mean(col))
  m_median <- paste("Median: ",median(col))
  m_var <- paste("Variance: ",var(col))
  m_sd <- paste("Standard Dev: ",sd(col))
  print(paste(c(colname,m_mean,m_median,m_var,m_sd),sep='\t'))
}

# Summary statistics table
print(" ================== ")
print("Summary Statistics - Individual lots")
stats(lot1,"Lot1 -- ")
stats(lot2,"Lot2 -- ")
stats(lot3,"Lot3 -- ")

print("Summary Statistics - Combined")
stats(susp_data$PSI,"All -- ")

###############################
# 
# Suspension Coil T-Test
#
###############################

print(t.test(susp_data$PSI,mu=1500)) #compare sample versus population means

