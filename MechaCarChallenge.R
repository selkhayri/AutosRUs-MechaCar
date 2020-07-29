library(tidyverse)

###########################
#
# MPG Regression
#
###########################

dataset <- 'MechaCar_mpg.csv'

mech_data <- read.csv(dataset)

print(head(mech_data))

mlr <- lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data = mech_data, na.action=na.omit)

print(summary(mlr))

# Add AWD to independent variables

mlr <- lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data = mech_data, na.action=na.omit)

print(summary(mlr))

# Pare down independent variables to vehicle.length, vehicle.weight, and ground.clearance

mlr <- lm(mpg ~ vehicle.length + vehicle.weight + ground.clearance, data = mech_data, na.action=na.omit)

print(summary(mlr))

# Summary statistics of quantitative variables
quantitative <- mech_data[,c("vehicle.length","vehicle.weight","spoiler.angle","ground.clearance")]

###########################
#
# Suspension Coil Summary
#
###########################

dataset <- 'Suspension_Coil.csv'

susp_data <- read.csv(dataset)

print(head(susp_data))

lot1 <- susp_data[susp_data$Manufacturing_Lot == "Lot1",]$PSI
lot2 <- susp_data[susp_data$Manufacturing_Lot == "Lot2",]$PSI
lot3 <- susp_data[susp_data$Manufacturing_Lot == "Lot3",]$PSI

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

