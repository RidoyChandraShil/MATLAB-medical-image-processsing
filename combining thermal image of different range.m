% combining thermal image
close all
clear all
clc
%Read Thermal Image At Various Range
im1=imread('222_111_(2021-Jan-01)_6-2-2021_1-28 AM-49_7.tif');
im2=imread('222_111_(2021-Jan-01)_6-2-2021_1-30 AM-7_8.tif');
im3=imread('222_111_(2021-Jan-01)_6-2-2021_1-39 AM-5_9.tif');
%Converting 4D image to 3D RGB format
im1=double(im1(:,:,1:3))/255;
figure
subplot 221
imshow(im1);
im2=double(im2(:,:,1:3))/255;
subplot 222
imshow(im2);
im3=double(im3(:,:,1:3))/255;
subplot 223
imshow(im3);
%Extraction of Colormap
imap=imread('Capture.JPG');
subplot 224
imshow(imap);
imap=im2double(imap);
r=imap(:,:,1);
g=imap(:,:,2);
b=imap(:,:,3);
r=r(1,:)';
g=g(1,:)';
b=b(1,:)';
map=[r,g,b];
%Applying Algorithm to get intensity matrices
normI1r=(((im1(:,:,1)-min(min(im1(:,:,1)))).*(26-18))./(max(max(im1(:,:,1)))-min(min(im1(:,:,1)))))+18;
normI1g=(((im1(:,:,2)-min(min(im1(:,:,2)))).*(26-18))./(max(max(im1(:,:,2)))-min(min(im1(:,:,2)))))+18;
normI1b=(((im1(:,:,3)-min(min(im1(:,:,3)))).*(26-18))./(max(max(im1(:,:,3)))-min(min(im1(:,:,3)))))+18;
normI2r=(((im2(:,:,1)-min(min(im2(:,:,1)))).*(34-26))./(max(max(im2(:,:,1)))-min(min(im2(:,:,1)))))+26;
normI2g=(((im2(:,:,2)-min(min(im2(:,:,2)))).*(34-26))./(max(max(im2(:,:,2)))-min(min(im2(:,:,2)))))+26;
normI2b=(((im2(:,:,3)-min(min(im2(:,:,3)))).*(34-26))./(max(max(im2(:,:,3)))-min(min(im2(:,:,3)))))+26;
normI3r=(((im3(:,:,1)-min(min(im3(:,:,1)))).*(42-34))./(max(max(im3(:,:,1)))-min(min(im3(:,:,1)))))+34;
normI3g=(((im3(:,:,2)-min(min(im3(:,:,2)))).*(42-34))./(max(max(im3(:,:,2)))-min(min(im3(:,:,2)))))+34;
normI3b=(((im3(:,:,3)-min(min(im3(:,:,3)))).*(42-34))./(max(max(im3(:,:,3)))-min(min(im3(:,:,3)))))+34;
%Combining intensity matrices into one
combIr=normI1r;
loc=find(combIr==26);
combIr(loc)=normI2r(loc);clear loc;
loc=find(combIr==34);
combIr(loc)=normI3r(loc);clear loc;
combIg=normI1g;
loc=find(combIg==26);
combIg(loc)=normI2g(loc);clear loc;
loc=find(combIg==34);
combIg(loc)=normI3g(loc);clear loc;
combIb=normI1b;
loc=find(combIb==26);
combIb(loc)=normI2b(loc);clear loc;
loc=find(combIb==34);
combIb(loc)=normI3b(loc);clear loc;
combI=zeros(size(im1));
combI(:,:,1)=combIr;
combI(:,:,2)=combIg;
combI(:,:,3)=combIb;
%Saving the actual data
save('combdata.mat','combI');
%Setting temp limit to view thermal image at that range
b=44; %Upper limit of temp display
a=18; %Lower limit of temp display
finalcombI=combI;
finalcombI(combI>=b)=b;
finalcombI(combI<=a)=a;
finalcombI=(finalcombI-a)./(b-a);
%Viewing thermal image in jet colormap
figure
imshow(finalcombI,'Colormap',map), colorbar;
caxis([a b]);
