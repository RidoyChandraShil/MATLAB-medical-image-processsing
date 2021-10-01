close all
clear all
clc
f=imread('fabric.png');
f1=mat2gray(f);
subplot 223
imshow(f1);
[h,bin]=imhist(f1);
subplot (2,2,[1,2])
bar(bin,h)
th=mean(f1(:))
f1(f1 < th) = 0;
f1(f1 >= th) = 1;
subplot 224
imshow(f1);
% levelnew = thresh_tool(uint16(Ic));
% Id = uint8(zeros(size(Ic)));
% Id(Ic<levelnew & Ic>0) = 1;
% Id(Ic>=levelnew) = 2;
% figure
% imshow(Id,[0 0 0;0 0 0;.25 .25 1;1 1 1])
