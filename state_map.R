library(geobr)
library(ggplot2)
library(readxl)

CE <- read_state(code_state = 'CE')

df <- read_excel("C:/Users/GABRIEL/Desktop/TCC/GD1.xlsx")

ggplot(CE) + geom_sf()+
  geom_point(data = df ,
             aes(x = LON , y = LAT , size= POTENCIA),
             colour = 'black',fill="yellow",
             pch=21, alpha=I(0.7))