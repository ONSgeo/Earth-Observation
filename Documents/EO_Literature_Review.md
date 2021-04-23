# Earth Observation Literature Review

## Introduction

## Available Data

### Providers

### Satellite Platforms/Data Portals

#### Sentinel

The Sentinel mission is operated by the European Space Agency. It consists of 7 dual-satellite constellations. The mission is part of the fulfillment of the Copernicus programme.

Access to Sentinel mission data is available via the <a href="https://scihub.copernicus.eu/" target="_blank">Copernicus Open Access Hub</a>. Currently there is open access available for Sentinel-1, -2, and -3 via a free user account. Currently only pre-operational -5p data is available and this has a separate GUI/API for access and via premade guest credentials. Pre-operational products for Sentinel 1, 2, and 3 are also available.

Mission specifications (full linked):
* <a href="https://sentinel.esa.int/web/sentinel/missions/sentinel-1" target="_blank">Sentinel-1</a>
  * Single instrument radar altimetry 5x20m resolution. 6-day repeat.
* <a href="https://sentinel.esa.int/web/sentinel/missions/sentinel-2" target="_blank">Sentinel-2</a>
  * Single instrument multi-spectral surface imagery up to 10m resolution
* <a href="https://sentinel.esa.int/web/sentinel/missions/sentinel-3" target="_blank">Sentinel-3</a>
  * Two instruments covering multi-spectral surface imagery up to 300m resolution and single instrument for radar altimetry. 27-day repeat
* <a href="https://sentinel.esa.int/web/sentinel/missions/sentinel-5p" target="_blank">Sentinel-5p</a>
  * Single instrument multi-spectral spectrometers for atmospheric particulates at 7km resolution. 16-day repeat

#### LandSat
The Landsat program is the longest-running enterprise for acquisition of satellite imagery of Earth. It is a joint NASA/USGS program. Landsat satellite chronology dates back to July 23, 1972 the Earth Resources Technology Satellite was launched. This was eventually renamed to Landsat. The most recent, Landsat 8, was launched on February 11, 2013 and Landsat 9 is expected in September 2021. Landsat satellites have acquired millions of images which are a unique resource for global change research and applications in  agriculture, cartography, geology, forestry, regional planning, surveillance and education. 

Landsat data can be freely ordered from USGS websites <a href="https://landsat.gsfc.nasa.gov/data/where-get-data" target="_blank">USGS</a>, depending on data use:

LandSatlook viewer is a new tool launched in 2012 that enables fast and easy viewing, exporting and downloading of 3 million Landsat images all around the globe with just a simple web browser.

USGS GloVis: The Global Visualization Viewer
On GloVis, you can search for data by clicking on an interactive map or by entering the geographic coordinates (latitude and longitude) of the site you are searching for. All data is orthorectified and in GeoTIFF format.

USGS Earth Explorer 
The USGS Earth Explorer website allows you to custom tailor your search parameters for Landsat data.


Free Orthorectified Landsat Data
The USGS also freely offers the Landsat Orthorectified data collection which consists of a global set of high-quality, relatively cloud-free orthorectified MSS, TM and ETM+ imagery from Landsats 1-5 and 7.



* USGS
* Earth Explorer
* Basic tech specs

### APGB

### ESRI Living Atlas

### Raster Bands

Remote sensed data often come as a number of seperate bands reprsenting different wavelengths of sensed light. These bands ban be combined to produce true or false colour imagery, or can be used as a large dataset for analysis.

#### Processed/Unprocessed

Data from Landsat and Sentinel programmes are available at a number of processing levels. These levels determine what corrections have been made to the data to account for:

* Position of the pixels on the ground
* Atmospheric distortions
* Conversion from raw n-bit values to reflectance and radiance

For example, three processed products at top of atmosphere (TOA), surface reflectance (bottom of atmosphere, BOA), and surface temperature from Landsat:

<p align="center">
 <img src="https://github.com/ONSgeo/Earth-Observation/blob/main/images/C2_L8_140041_20130503.png?raw=true" alt="Landsat products. Credit: Michelle A. Bouchard, based on Landsat data from the USGS">
 <i>Three remote sensed products available from Landsat: Left: Landsat 8 Collection 2 level-1 top of atmosphere reflectance image, center: Landsat 8 Collection 2 level-2 atmospherically corrected surface reflectance image, and right: Landsat 8 Collection 2 level-2 surface temperature. Credit: <a href="https://www.usgs.gov/media/images/example-landsat-8-collection-2-products" target="_blank">USGS</a></i>
</p>

For surface analysis purposes, data should be processed to bottom of atmosphere (BOA) reflectance: This represents the physical values of light reflected from the surface with atmospheric corrections made.

Both Landsat and Sentinel data collections offer BOA reflectance under 'Level 2' data products from their respective providers.

#### Applications

* Focus on Vis/NIR
* Brief mention of other bands

## Tools

### Programmatic

* R/Python

### GIS

* QGIS/ArcGis

### Specialised

* SNAP ('user friendly')

## How EO is being used/Case studies

Both expected AND unexpected

### SDGs

* Air pollution/Water pollution
* Economic development

### Academic

* Research Articles

### Private

* OS
* Overall private sector e.g. oil

### Government

* Gov depts e.g. DEFRA
* Military

Clear case for use of EO data to support many government projects.

## Future Work
