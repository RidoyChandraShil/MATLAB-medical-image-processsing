a=magic(5)
w=[-1 0 1]
b = imfilter(a,w)
c = imfilter(a,w,'full')
d = imfilter(a,w,'conv')
e = imfilter(a,w,'replicate')
f = imfilter(a,w,'replicate','full')
  
%% with image
close all;
clear all;
clc;
im = imread('checkerboard.jpg');
f = mat2gray(rgb2gray(im));
w = ones(250);
f1 = imfilter(f,w,0,'full'); % default zero padding
f2 = imfilter(f,w, 'replicate','full');
f3 = imfilter(f,w, 'symmetric','full');
f4 = imfilter(f,w, 'circular','full');
figure, subplot(2, 3, 1), imshow(f);
title('Original Image');
subplot(2, 3, 2), imshow(f1,[]);
title('Default');
subplot(2, 3, 3), imshow(f2,[]);
title('Replicate');
subplot(2, 3, 4), imshow(f3,[]);
title('Symmetric');
subplot(2, 3, 5), imshow(f4,[]);
title('Circular');
