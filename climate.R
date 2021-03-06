library(FedData)
library(rnoaa)
ghcnd_search("USW00023183", date_min = "2018-07-01", date_max = "2018-07-31", var = "all")
Tmax_PHX <- ghcnd_search("USW00023183", date_min = "2018-07-01", date_max = "2018-07-31", var = "TMAX")
library(ggplot2)
library(sp)
library(raster)
library(dplyr)
library(sf)
library(spData)
library(tidyverse)


# first try

Tmax_PHX_df <- as.data.frame(Tmax_PHX) 
Tmax_PHX_mutate <- Tmax_PHX_df %>% 
  mutate(tmax = tmax.tmax/10)
plot(Tmax_PHX_mutate$tmax.date, Tmax_PHX_mutate$tmax,
     xlab="July 2018",
     ylab="Maximum Temperature Phoenix, AZ Airport Station",
     main="Maximum Temperature by day",
     col="red")



