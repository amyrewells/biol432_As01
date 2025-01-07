#update data to include volume


# import required packages 
library(dplyr)

#read in data
data<- read.csv("./measurements.csv")

#add volume data, assume volume of cylinder
data <- data %>%
  mutate(Volume_cm3 = pi*Limb_Length_cm*(Limb_Width_cm/2)^2 )#pi*h*r^2

write.csv(data, "measurements.csv", row.names = TRUE)
