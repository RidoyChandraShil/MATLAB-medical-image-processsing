I=imread('grains.jpg');
% f=rgb2gray(I);
% h=imhist(I);
[h,bin]=imhist(I);
p=h/numel(I);
horz=1:length(p);
imshow(I)
figure
bar(horz, p);
figure
bar(bin,p)
sum(p)
sum(h)
