close all;
clear all;
clc;
f = imread('mammogram1.jpg');
figure(1)
imshow(f)
X=negative(f);
figure(2)
imshow(X)

function R=negative(img)
[r c h] = size(img);
I = uint8(zeros(r, c, h));
R = imadjust(img,[0 1],[1 0],1);
end

%% another approach
function negative_image=negativeImage(main_image)
main_image=imread('pout.tif');%enter your image file
subplot(121);
imshow(main_image);
title('Main image');
II=main_image(:,:,1);%converting the image into 2D
I=mat2gray(II);
[row,col]=size(I);
for i=1:row
for j=1:col
negative_image(i,j)=1-I(i,j);
end
end
subplot(122);
imshow(negative_image);
title('Negative image');
