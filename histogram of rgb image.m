I=imread('meghna.jpg');
imhist(I)
[h,bin]=imhist(I);
plot(bin,h);
[h1,bin1]=imhist(rgb2gray(I));
hold on
plot(bin1,h1)
[h2,bin2]=imhist(I(:,:,1));
plot(bin2,h2)
[h3,bin3]=imhist(I(:,:,2));
plot(bin3,h3)
[h4,bin4]=imhist(I(:,:,3));
plot(bin4,h4)
htot=h2+h3+h4;
plot(bin,htot)
