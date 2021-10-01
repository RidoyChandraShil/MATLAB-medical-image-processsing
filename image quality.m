close all;
clear all;
clc;
f = imread('pout.tif');
for q = 0:5:100
filename = sprintf('series_%3d.jpg', q);
imwrite(f, filename, 'quality', q);
end

%% imgage size comparasion
i= imread('series_ 75.jpg');
whos i
imfinfo('series_ 75.jpg')
