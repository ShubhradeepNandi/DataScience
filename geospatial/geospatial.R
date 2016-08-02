#Delve in DataScience - Geospatial Analytics
#Author :- Shubhradeep Nandi(Datascience @ IBM)
#Script to load the spatial data
library(rgdal)
london<- readOGR(dsn = "data", layer = "sports")

#plotting the geometries
plot(london)

#Selective plotting based on conditions
select <- london$Partic_Per > 20 
plot(london[select,],col="green", add=TRUE)

#Creating a thematic map
library(tmap)
qtm(london, "Partic_Per", style ="gray", text="name" )

