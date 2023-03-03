% Read raster topography into Matlab

% Chelsea Scott: cpscott1@asu.edu

% Hillshade code available from: https://www.mathworks.com/matlabcentral/fileexchange/14863-hillshade
% Gradient code available from: https://www.mathworks.com/matlabcentral/fileexchange/18655-gradient8?s_tid=srchtitle


clear all; close all

addpath("gradient8/")

file = "Utah_grabens.tif";
[topo,R] = readgeoraster(file,"OutputType","double");

X = R.XWorldLimits(1)+R.CellExtentInWorldX/2:R.CellExtentInWorldX:R.XWorldLimits(2)-R.CellExtentInWorldX/2;
Y = R.YWorldLimits(1)+R.CellExtentInWorldY/2:R.CellExtentInWorldY:R.YWorldLimits(2)-R.CellExtentInWorldY/2;


h = hillshade(topo,X,Y,'azimuth',300);

figure 
imagesc(X/1e3,Y/1e3,h)
colormap(bone)
xlabel("East (km)");ylabel("North (km)")
set(gca,'FontSize',14)

[G,ASP] = gradient8(topo,R.CellExtentInWorldX);

figure 
imagesc(X/1e3,Y/1e3,G)
xlabel("East (km)");ylabel("North (km)")
set(gca,'FontSize',14)
caxis([-0.2 3])
colorbar

figure 
imagesc(X/1e3,Y/1e3,ASP)
xlabel("East (km)");ylabel("North (km)")
set(gca,'FontSize',14)
colorbar