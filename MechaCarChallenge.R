#load dyplyr
library(dplyr)

#import mpg csv
MechaCar_Mpg <- read.csv(file="Resources/MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

# use lm with all variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_Mpg)

#use summary to get p value and r squard value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_Mpg))
