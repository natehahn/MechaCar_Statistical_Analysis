library(dplyr)
library(tidyverse)

mech_cars <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset

linear <- lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mech_cars)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mech_cars))

suspension_coils <- read.table('Suspension_Coil.csv', sep=',', header=TRUE) #read in dataset

coils_summary <- suspension_coils %>% summarize(mean=mean(PSI), median=median(PSI), var=var(PSI), sd=sd(PSI), .groups = 'keep') #create summary table

lot_summary <- suspension_coils %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), var=var(PSI), sd=sd(PSI), .groups = 'keep')

sample_table <- suspension_coils %>% sample_n(50) #randomly sample 50 data points

?t.test()

t.test(x = suspension_coils$PSI, mu=1500)

t.test(formula = PSI, data = suspension_coils, subset = Manufacturing_Lot == "Lot1")

lot1 <- filter(suspension_coils,Manufacturing_Lot == "Lot1")
lot2 <- filter(suspension_coils,Manufacturing_Lot == "Lot2")
lot3 <- filter(suspension_coils,Manufacturing_Lot == "Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)