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
# But raster::plot will let us specify which layers to plot 
raster::plot(sentinel_10m_bandstack)

# plotRGB will let us arrange those into a multiband image
# Truecolour
plotRGB(sentinel_10m_bandstack, r = 3, g = 2, b = 1, axes = FALSE, stretch="lin")
# Falsecolour NIR Red Band
plotRGB(sentinel_10m_bandstack, r=4, g=2, b=1, axes= FALSE, stretch="lin")

### Let's have a closer look at the raster data before doing operations by looking at the first 4 bands:
print(sentinel_10m_bandstack[[1]])
print(sentinel_10m_bandstack[[2]])
print(sentinel_10m_bandstack[[3]])
print(sentinel_10m_bandstack[[4]])
# We can noW see which bands from the raster stack relate to the input rasters! Thankfully they align as expected.
# The min and max values are the BOA reflectances.
# We can also look at summary statistics, however these are only calculated for a small number of cells:
summary(sentinel_10m_bandstack[[4]])

#### Editing rasters ####

### Firstly, let's have a go at cropping the image
# First, we have to specify and extent to which we want to crop things.
# We'll take the top right quarter of the image ((xmin+xmax)/2, (ymin+ymax)/2) using the extent function
e <- extent((xmax(sentinel_10m_bandstack)+xmin(sentinel_10m_bandstack))*0.5, 
            xmax(sentinel_10m_bandstack), 
            (ymax(sentinel_10m_bandstack)+ymin(sentinel_10m_bandstack))*0.5, 
            ymax(sentinel_10m_bandstack))

# And apply it to the entire stack to maintain consistency
sentinel_10m_bandstack_cropped <- crop(sentinel_10m_bandstack, e)
# Now plot the result as RGB
plotRGB(sentinel_10m_bandstack_cropped, r=4, g=2, b=1, axes= FALSE, stretch="lin")

### Ta da! We've now cropped the image down. We can also use a geometry as the extent to crop/clip. For example, using a local authority:

# Load in welsh local authorities and select Conwy
wales_lad <- st_read("D:/boundaries/ukboundaries.gpkg", "lad_uk_2019_bgc") %>% 
  filter(lad19cd == "W06000003") %>% 
  st_transform(crs=crs(sentinel_10m_bandstack))
# Clip and crop to the LAD boundary:
sentinel_10m_bandstack_cropped_LAD <- crop(raster::mask(sentinel_10m_bandstack, wales_lad), wales_lad)
# And plot
plotRGB(sentinel_10m_bandstack_cropped_LAD, r=4, g=2, b=1, axes= FALSE, stretch="lin")

#### Analysis ####

### Now we may wish to do some analysis. For example: calculating the NDVI!
### To do this, we will need to do some band math.
### The formula for NDVI is: (NIR - Red) / (NIR + Red), or: (B4 - B3) / (B4 + B3)

# Do the calculation:
sentinel_10m_conwy_ndvi <- (sentinel_10m_bandstack_cropped_LAD[[4]] - sentinel_10m_bandstack_cropped_LAD[[3]]) / (sentinel_10m_bandstack_cropped_LAD[[4]] + sentinel_10m_bandstack_cropped_LAD[[3]])
# And plot:
raster::plot(sentinel_10m_conwy_ndvi)

### The result is a single raster layer with values from -1 (water) through 0 (rocks, urban land) to 1 (forests)