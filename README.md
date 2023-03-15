[![NSF-1948997](https://img.shields.io/badge/NSF-1948997-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1948997) [![NSF-1948994](https://img.shields.io/badge/NSF-1948994-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1948994) [![NSF-1948857](https://img.shields.io/badge/NSF-1948857-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1948857)

# Topography_Matlab
Chelsea Scott: cpscott1@asu.edu(corresponding author)

This repository contains Matlab code to read in and visualize point cloud and raster topography data in Matlab. There are three scripts: 

- point_cloud_lasdata.m: Use this script and the Mathwork's file exchange lasdata (https://www.mathworks.com/matlabcentral/fileexchange/48073-lasdata) to load point cloud topography into Matlab. This is recommended if you do not have access to the Matlab's lidar toolbox. The point cloud must be a .las file. 

- point_cloud_matlab.m: Use this script with Matlab's lidar toolbox to load and visualize lidar point cloud by attribute, for example RBG color (when available) and classification. 

- read_visualize_raster.m: Use this script to read in raster datasets such as digital elevation models, make hillshades (requires Mathwork's file exchange: https://www.mathworks.com/matlabcentral/fileexchange/14863-hillshade), and make gradient maps (requires Mathwork's file exchange: https://www.mathworks.com/matlabcentral/fileexchange/18655-gradient8?s_tid=srchtitle). 


Process these jobs on OpenTopography to generate example point cloud (.las or .laz files) or DEMs (.tif files). Note that in the Matlab scripts, the topography data files from OpenTopography are renamed with local significance. 

Salt Lake City(https://doi.org/10.5069/G9TH8JNQ): https://portal.opentopography.org/lidarDataset?opentopoID=OTLAS.122014.26912.1&minX=-111.88989256858865&minY=40.77602500627361&maxX=-111.88666950298132&maxY=40.77977572159702

Canyonlands National Park: (https://doi.org/10.5069/G9X34VNQ): https://portal.opentopography.org/lidarDataset?opentopoID=OTLAS.072020.6341.1&minX=-109.92892645717178&minY=38.10798288429967&maxX=-109.90619966646437&maxY=38.12079524373647
