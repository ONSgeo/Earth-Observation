---
title: Sentinel Data Technical Details and Usage
description: Overview of technical specifactions of Sentinel data and how to use it
---


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
		<th>Name</th>
		<th>Description</th>
		<th>Wavelength(nm)</th>
		<th>StackBand</th>
	</tr>
	<tr>
		<th colspan="4">10m Bands</th>
	</tr>
	<tr>
		<td>B02</td>
		<td>Blue</td>
		<td>490</td>
		<td>Band 1</td>
	</tr>
	<tr>
		<td>B03</td>
		<td>Green</td>
		<td>560</td>
		<td>Band 2</td>
	</tr>
	<tr>
		<td>B04</td>
		<td>Red</td>
		<td>665</td>
		<td>Band 3</td>
	</tr>
	<tr>
		<td>B08</td>
		<td>NIR</td>
		<td>842</td>
		<td>Band 4</td>
	</tr>
	<tr>
		<th colspan="4">20m Bands</th>
	</tr>
	<tr>
		<td>B02</td>
		<td>Blue</td>
		<td>490</td>
		<td>Band 1</td>
	</tr>
	<tr>
		<td>B03</td>
		<td>Green</td>
		<td>560</td>
		<td>Band 2</td>
	</tr>
	<tr>
		<td>B04</td>
		<td>Red</td>
		<td>665</td>
		<td>Band 3</td>
	</tr>
	<tr>
		<td>B05</td>
		<td>Red Edge</td>
		<td>705</td>
		<td>Band 4</td>
	</tr>
	<tr>
		<td>B06</td>
		<td>Red Edge</td>
		<td>740</td>
		<td>Band 5</td>
	</tr>
	<tr>
		<td>B07</td>
		<td>Red Edge</td>
		<td>783</td>
		<td>Band 6</td>
	</tr>
	<tr>
		<td>B8A</td>
		<td>Red Edge</td>
		<td>865</td>
		<td>Band 7</td>
	</tr>
	<tr>
		<td>B11</td>
		<td>SWIR</td>
		<td>1610</td>
		<td>Band 8</td>
	</tr>
	<tr>
		<td>B12</td>
		<td>SWIR</td>
		<td>2190</td>
		<td>Band 9</td>
	</tr>
</table>
