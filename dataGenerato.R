#generate data


# choose species names
species_vec<- c("Ally", "Bally", "Cally", "Dally", "Elly")
# generate species data 
species_data<- sample(species_vec, 100, replace = TRUE)

# generate limb width data
limb_width<- rnorm(100, 2, 1)

# generate limb length data
limb_length<- rnorm(100, 10, 1)

# choose observer names
observer_vec<- c("Zeb", "Yeb", "Xeb")
# generate observer data
observer_data<- sample(observer_vec, 100, replace = TRUE)

measurements <- data.frame(Species_Name = species_data, 
                           Limb_Width_cm = limb_width, 
                           Limb_Length_cm = limb_length,
                           Observer = observer_data)
write.csv(measurements, "measurements.csv", row.names = TRUE)
