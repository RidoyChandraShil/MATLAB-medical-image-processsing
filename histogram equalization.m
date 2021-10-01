close all;
clear
I=imread('meghna.jpg');
I=rgb2gray(I);
[h,bin]=imhist(I);
plot(bin,h);
% J[h,bin]=imhist(I);
J=histeq(I,64);
[h2,bin2]=imhist(J);
J1=histeq(I,256);
[h3,bin3]=imhist(J1);
figure
plot(bin2,h2)
figure
plot(bin3,h3)
figure
imshow(I)
figure
imshow(J)
%%
figure
y1=cumsum(h);
y2=cumsum(h2);
plot(y1)
hold on
plot(y2)
