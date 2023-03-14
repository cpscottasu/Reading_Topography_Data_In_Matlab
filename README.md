[![NSF-1948997](https://img.shields.io/badge/NSF-1948997-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1948997) [![NSF-1948994](https://img.shields.io/badge/NSF-1948994-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1948994) [![NSF-1948857](https://img.shields.io/badge/NSF-1948857-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1948857)

# Topography_Matlab
Chelsea Scott: cpscott1@asu.edu(corresponding author)

This repository contains Matlab code to read in and visualize point cloud and raster topography data in Matlab. There are three scripts: 

- point_cloud_lasdata.m: Use this script and the Mathwork's file exchange lasdata (https://www.mathworks.com/matlabcentral/fileexchange/48073-lasdata) to load point cloud topography into Matlab. This is recommended if you do not have access to the Matlab's lidar toolbox. 

- point_cloud_matlab.m: Use this script with Matlab's lidar toolbox to load and visualize lidar point cloud by attribute, for example RBG color (when available) and classification. 

- read_raster.m: Use this script to read in raster datasets such as digital elevation models, make hillshades (requires Mathwork's file exchange: https://www.mathworks.com/matlabcentral/fileexchange/14863-hillshade), and make gradient maps (requires Mathwork's file exchange: https://www.mathworks.com/matlabcentral/fileexchange/18655-gradient8?s_tid=srchtitle). 