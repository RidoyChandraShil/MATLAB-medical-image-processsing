close all;
clear all;
clc;
%%
f = imread('mammogram1.jpg');
[r c h] = size(f);
I = uint8(zeros(r, c, h, 4));
I(:,:,:,1)= f;
I(:,:,:,2)= imadjust(f,[0 1],[1 0],1);
I(:,:,:,3)= imadjust(f,[0.5 .75],[0 1],1.1);
I(:,:,:,4)= imadjust(f,[0.25 0.5],[0 1],.95);
figure,montage(I, 'Size', [2 2])

%%
f = imread('car_1.jpg');
[r c h] = size(f);
I = uint8(zeros(r, c, h, 4));
I(:,:,:,1)= f;
I(:,:,:,2)= imadjust(f,[0 1],[1 0],1);
I(:,:,:,3)= imadjust(f,[0.5 .75],[0 1],1.1);
I(:,:,:,4)= imadjust(f,[0.25 0.5],[0 1],.95);
figure,montage(I, 'Size', [2 2])
