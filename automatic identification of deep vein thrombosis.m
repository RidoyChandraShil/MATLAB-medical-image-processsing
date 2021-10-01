% Deep vein thrombosis
close all
clear all
clc
%Read DVT image
i=imread('DVT.JPG');
subplot 131
imshow(i);
%Convert to intensity matrix
igray=.5.*i(:,:,2)+0.5.*i(:,:,1)+.5.*i(:,:,3);
subplot 132
imshow(igray);
threshold=245/255;
bw=im2bw(igray,threshold);
nhood = ones([2 1 1]);
bw = imopen(bw,nhood);
%Segmentation
L=bwlabeln(bw);
stats=regionprops(L,'Area','Centroid');
A = [stats.Area];
biggest = find(A==max(A));
j1=igray;
j1(L~=biggest)=0;
imshow(j1);
w=fspecial('laplacian',0);
j2=imfilter(igray,w,0,'same');
imshow(j2);
im=j1+2*j2;
subplot 133
imshow(im);
