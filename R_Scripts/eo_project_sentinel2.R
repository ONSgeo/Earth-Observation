#### This script is an experiment in important and processing sentinel 2 level 2A data in R

#### Libraries ####
library(sf)
library(raster)
library(tidyverse)
library(tmap)

#### Importing data ####

### Unfortunately, Sentinel data has a long, convoluted fil structure
# Set the data main folder
data_folder <- "D:/WorkDocs/EO_Project/data/S2A_L2A_NWALES_20200601/GRANULE/L2A_T30UVD_A025817_20200601T113448/IMG_DATA"

### The data is split into 10, 20, and 60m resolution folders, each containing a different combination of bands
### We only want bands deisgnated BXX.jp2
# Use regex to load this and stack
sentinel_10m_bandstack <- raster::stack(list.files(path=paste0(data_folder, "/R10m/"), pattern = "_B", full.names = TRUE))

### Now we want to have a look at the layers.
# Using base plot will just plot each layer separately
plot(sentinel_10m_bandstack)
# But raster::plot will let us specify which layers to plot and tm_rgb will let us arrange those into a colour image
raster::plot(sentinel_10m_bandstack, c(1, 2, 3))

# Truecolour
plotRGB(sentinel_10m_bandstack, r = 3, g = 2, b = 1, axes = FALSE, stretch="lin")
# Falsecolour NIR Red Band
plotRGB(sentinel_10m_bandstack, r=4, g=2, b=1, axes= FALSE, stretch="lin")

### Let's have a closer look at the raster data before doing operations