clc;
close all;
clear all;
I=imread('rose.jpg');
k=rgb2gray(I);
figure
imhist(k),title('Histogram','FontSize',20)
g=graythresh(k);
BW = imbinarize(k,g);
figure
subplot 121
imshow(I)
title('Main image','FontSize',20)
subplot 122
imshow(BW)
title('Thresholded image','FontSize',20)
%continuous histogram
II=imread('rose2.jpg');
kk=rgb2gray(II);
figure
imhist(kk),title('Continuous Histogram','FontSize',20)
gg=graythresh(kk);
BWW = imbinarize(kk,gg);
figure
subplot 121
imshow(II)
title('Main image','FontSize',20)
subplot 122
imshow(BWW)
title('Thresholded image','FontSize',20)
