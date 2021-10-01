close all;
clear all;
clc;
f = imread('moon.jpg');
f1 = rgb2gray(f);
w = fspecial('laplacian',0);
display(w);
f2 = imfilter(f1, w, 'replicate');
g1 = im2double(f1);
g2 = imfilter(g1, w, 'replicate');
im = g1-g2;
im1 = g1+g2;
im2 = g2-imfilter(g2, w , 'replicate');
figure, subplot(3,2,1), imshow(f);
title('Original image');
subplot(3,2,2), imshow(f2,[]);
title('Laplacian Filtered image (uint8)');
subplot(3,2,3), imshow(g2,[]);
title('Laplacian Filtered image (double)');
subplot(3,2,4), imshow(im);
title('Enhanced image');
subplot(3,2,5), imshow(im1);
title('Diffused image');
subplot(3,2,6), imshow(im2);
title('Multiple enhancement image');

figure
surf(f2)
shading flat
figure
surf(g2)
shading flat
