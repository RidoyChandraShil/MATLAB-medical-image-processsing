clc;
clear all;
close all;
file = fopen('image.raw', 'r');
image=fread(file, [1536, 1944], 'uint16');
image(image==0)=.00001;
image=image';
fclose(file);
figure;
subplot 221
imshow(image,[])
title('Original CT Image');
file = fopen('dark.raw', 'r');
dark=fread(file, [1536, 1944], 'uint16');
dark(dark==0)=.00001;
dark=dark';
fclose(file);
subplot 222
imshow (dark, [])
title('Dark Image');
file = fopen('white.raw', 'r');
white=fread(file, [1536, 1944], 'uint16');
white(white==0)=.00001;
white=white';
fclose(file);
subplot 223
imshow (white, [])
title('White Image');
reconstructedImage=(image-dark)./(white-dark);
reconstructedImage = medfilt2(reconstructedImage,[3 3]);
subplot 224
imshow(reconstructedImage,[])
title('Filtered Image');
