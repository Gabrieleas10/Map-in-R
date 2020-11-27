# intalling libraries
library(geobr)
library(ggplot2)
library(readxl)

# select plot state in Brazil
CE <- read_state(code_state = 'CE')

# path's dataset of points
df <- read_excel("C:/Users/GABRIEL/Desktop/TCC/GD1.xlsx")

# generate map with data points
ggplot(CE) + geom_sf()+
  geom_point(data = df ,
             aes(x = LON , y = LAT , size= POTENCIA),
             colour = 'black',fill="yellow",
             pch=21, alpha=I(0.7))