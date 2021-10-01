close all
clear all
clc
% sinusites extraction
im1=imread('Sinus.jpg');
subplot 121
imshow(im1);
igray=-0.199.*im1(:,:,2)+0.867 .*im1(:,:,1)+0.114.*im1(:,:,3);
threshold=200/255;
bw=imbinarize(igray,threshold);
nhood = ones([5 15 3]);
bw = imopen(bw,nhood);
L=bwlabeln(bw);
stats=regionprops(L,'Area','Centroid');
A = [stats.Area];
biggest = find(A>20000 & A<49490);
J1=igray;J2=J1;J3=J1;
J1(find(L~=biggest(1)))=0;J2(find(L~=biggest(2)))=0;J3(find(L~=biggest(3)))=0;
J=J1+J2+J3;
w=fspecial('sobel');
J4=imfilter(igray,w,0,'same');
J5=imfilter(igray,w',0,'same');
J6=J4+J5;
w=fspecial('laplacian',0);
J6=imfilter(J6,w,0,'same');
im=J+2*J6;
subplot 122
imshow(im);
