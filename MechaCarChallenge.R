#load dyplyr
library(dplyr)

#import mpg csv
MechaCar_Mpg <- read.csv(file="Resources/MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

# use lm with all variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_Mpg)

#use summary to get p value and r squard value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_Mpg))

#PSI Analysis

#import suspension info
coil_psi <- read.csv(file="Resources/Suspension_Coil.csv",check.names=F,stringsAsFactors = F)

total_summary <- coil_psi %>% summarize(Mean=mean(PSI), Median= median(PSI), Variance= var(PSI), SD= sd(PSI))

# see summarize by lot number 
lot_summary <- coil_psi %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median= median(PSI), Variance= var(PSI), SD= sd(PSI))


# T Test 

# t test on coil_psi
t.test(coil_psi$PSI, mu=1500)

#t test each lot 
t.test(subset(coil_psi, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(coil_psi, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(coil_psi, Manufacturing_Lot=="Lot3")$PSI, mu=1500)
