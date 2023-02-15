library(dplyr)

mech_cars <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset

lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mech_cars)

summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mech_cars))