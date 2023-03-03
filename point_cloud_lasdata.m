% Reading a point cloud in las format into Matlab 

%Chelsea Scott: cpscott1@asu.edu

% OpenTopography job to produce the data for this demo:
% https://portal.opentopography.org/lidarDataset?opentopoID=OTLAS.122014.26912.1&minX=-111.88989256858865&minY=40.77602500627361&maxX=-111.88666950298132&maxY=40.77977572159702
% Download las_data from Matlab file exchange (from Teemu Kumpumäki)
% https://www.mathworks.com/matlabcentral/fileexchange/48073-lasdata

clear all; close all

addpath("lasdata/")

% read in point cloud file with a lasFileReader object 
las_data = ("Utah_state_capitol.las");
ptcloud = lasdata(las_data);

% learn about the point cloud dataset
whos ptcloud
ptcloud 

% extract x, y ,z coordinate from the Matlab structure 
x = ptcloud.x;
y = ptcloud.y;
z = ptcloud.z;


figure
scatter(x(1:10:end),y(1:10:end),3,z(1:10:end),'filled')
axis equal
colorbar
xlabel("East (m)");ylabel("North (m)")
