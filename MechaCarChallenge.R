library(tidyverse)
library(readxl)
library(jsonlite)
library(dplyr)
library(readr)
#deliverable 1
MechaCar_mpg <- read.csv("MechaCar_mpg.csv")
lm(MechaCar_mpg)
#lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=MechaCar_mpg)
mpg_model <- lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length, data=MechaCar_mpg)
#carlm <- lm(MechaCar_mpg)
#summary(carlm)
summary(mpg_model)

#deliverable 2
Suspension_Coil <- read.csv("Suspension_Coil.csv")
#lm(Suspension_Coil)
#lm(VehicleID ~ Manufacturing_Lot + PSI, data=Suspension_Coil)
#suspensionlm <- lm(Suspension_Coil)
#summary(suspensionlm)
SuspensionPSIsum <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
SuspensionManLotsum <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#deliverable 3 t tests

#?shapiro.test()

#t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) #compare sample versus population means
#shapiro.test(mtcars$wt)

#t.test(Suspension_Coil$PSI,mu=as.numeric(SuspensionPSIsum[1:1])) #compare sample versus population means
t.test(Suspension_Coil$PSI,mu=1500)

#Lot1
#t.test(subset(Suspension_Coil, Manufacturing_Lot = "Lot1")$PSI,mu=as.numeric(SuspensionPSIsum[1:1]))
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI,mu=1500)

#Lot2
#t.test(subset(Suspension_Coil, Manufacturing_Lot = "Lot2")$PSI,mu=as.numeric(SuspensionPSIsum[1:1]))
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI,mu=1500)

#Lot3
#t.test(subset(Suspension_Coil, Manufacturing_Lot = "Lot3")$PSI,mu=as.numeric(SuspensionPSIsum[1:1]))
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI,mu=1500)

#deliverable 4 stats
#compare metrics vehicle weight to mpg
#How our Mecha car will compete with the competition
aov

#carlm_filt <- carlm[,c("vehicle_weight","mpg")] #filter columns from mtcars dataset
#carlm_filt$mpg <- factor(carlm_filt$mpg) #convert numeric column to factor
#aov(vehicle_weight ~ mpg,data=carlm_filt) #compare means across multiple levels
#summary(aov(vehicle_weight ~ mpg,data=carlm_filt))
#head(carlm_filt)

#t-test of metric like mpg to variable 
#t.test(Suspension_Coil$PSI,mu=as.numeric(SuspensionPSIsum[1:1]))
MechaCarmpg_sum <- MechaCar_mpg %>% summarize(Mean=mean(mpg),Median=median(mpg),Variance=var(mpg),SD=sd(mpg))
t.test(MechaCar_mpg$PSI,mu=as.numeric(MechaCarmpg_sum[1:1]))

#t.test(subset(MechaCar_mpg, mpg =< "30")$PSI,mu=30)
#find the mu from existing competition of their mpg to compare which test and which null and alternative hypotheses.
#null would be same mpg as competetiion. Alternative hypotheses would show significant difference in MPG and would reject the null.