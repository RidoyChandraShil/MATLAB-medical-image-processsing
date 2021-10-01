close all
clear all
clc

f = imread('moon.jpg');
f1 = rgb2gray(f);
h = fspecial('sobel');
PQ = paddedsize(size(f1));
F = fft2(double(f1), PQ(1), PQ(2));
H = fft2(double(h), PQ(1), PQ(2));
ffd= H.*F;
ftd = ifft2(ffd);
ffi = ftd(1:size(f,1), 1:size(f,2));
ffim = abs(ffi);
figure
subplot 121
imshow(ffim, []);
title('Frequency Domain Sobel Filter')
subplot 122
imshow(imfilter(f1,h), []);
title('Spatial Domain Sobel Filter')


function PQ = paddedsize(AB, CD, param)
    if nargin == 1
        PQ = 2*AB;
    elseif narqin ==2 && -ischar(CD)
        PQ = AB+CD-1;
        PQ = 2*ceil(PQ/2);
    elseif nargin==2
        m=max(AB);
        p = 2^nextpow2(2*m);
        PQ = [p p];
    else
        error('Wrong number of inputs.')
    end
end
