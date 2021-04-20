# Sentinel Data: Technical Details and Usage

This document covers some of the technical aspects of the Sentinel platform, including:

* How Sentinel works
* What data are available
* Accessing the data
* Using the data

## Using Sentinel Data

### Sentinel-2 L2A

Sentinel-2 L2A data is supplied within a larger folder structure. For MSI imagery, the raster image files are stored under 'GRANULES', and broken down pixel resolution and then sensor bands. Not all spatial resolutions contain all bands, and some resolutions include downscaled versions of higher resolutions.

The table below shows how the numbered bands would relate to bands in the software used to load and stack them, across each resolution:

<table style="width:100%" align="center">
	<tr>
		<th colspan="4">10m Bands</th>
	</tr>
	<tr>
		<th>Name</th>
		<th>Description></th>
		<th>Wavelength(nm)</th>
		<th>StackBand</th>
	</tr>
	<tr>
		<td>B02</td>
		<td>Blue</td>
		<td>490</td>
		<td>Band 1</td>
	</tr>
</table>