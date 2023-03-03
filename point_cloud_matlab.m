% Reading a point cloud in laz format into Matlab 

%Chelsea Scott: cpscott1@asu.edu

% https://portal.opentopography.org/lidarDataset?opentopoID=OTLAS.122014.26912.1&minX=-111.88989256858865&minY=40.77602500627361&maxX=-111.88666950298132&maxY=40.77977572159702

% learn more from Mathworks: https://www.mathworks.com/help/lidar/ug/read-process-write-lidar-point-cloud-data.html

clear all; close all

% read in point cloud file with a lasFileReader object 
lasReader = lasFileReader("Utah_state_capitol.laz");
ptCloud = readPointCloud(lasReader);

%learn about the point cloud file 
ptCloud

% plot point cloud by elevation using pcshow
figure
pcshow(ptCloud.Location)
title('Point Cloud colored by elevation')

% extract color
color = ptCloud.Color;

figure
pcshow(ptCloud.Location,color)
title('Point Cloud colored by point RGB')


disp(lasReader.ClassificationInfo)

ptCloudB = readPointCloud(lasReader,Classification=1);
fig1 = figure(Position=[0 0 800 400]);
hPanel1 = uipanel(fig1);
hPlot1 = axes(hPanel1);
pcshow(ptCloudB.Location,Parent=hPlot1)
set(gcf, 'name', 'Unclassified Points')


ptCloudC = readPointCloud(lasReader,Classification=2);
fig2 = figure(Position=[0 0 800 400]);
hPanel2 = uipanel(fig2);
hPlot2 = axes(hPanel2);
pcshow(ptCloudC.Location,Parent=hPlot2)
set(gcf, 'name', 'Ground Points')

% Generate vectors for the x, y, z information
pts = ptCloud.Location;
x = pts(:,1);
y = pts(:,2);
z = pts(:,3);

