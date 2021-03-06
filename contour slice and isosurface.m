close all
clear all
clc
%contour slice
[X,Y,Z] = meshgrid(-2:.2:2);
V = X.*exp(-X.^2-Y.^2-Z.^2);
xslice = [-1.2,0.8,2];   
lvls = -0.2:0.01:0.4;

contourslice(X,Y,Z,V,xslice,[],[],lvls)
title('Contourslice','FontSize',20)
colorbar
view(3)
grid on

%isosurface
clf;
isosurface(X,Y,Z,V, 1e-5);
isosurface(X,Y,Z,V, -1e-4);
axis([-3 3 -3 3 -3 3]);
title('Isosurface','FontSize',20)
