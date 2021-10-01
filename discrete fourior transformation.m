close all
clear
clc
len=512;
x=1:len;
y=1:len;
[X,Y]=meshgrid(x,y);

% f=sin(2*pi*X/len);
f=sin(2*pi*X/len)+sin(2*pi*Y/len);
% f=1+sin(2*pi*X/len+2*pi*Y/len);


k=surf(f);
set(k,'Linestyle','none')
F = fft2(f,512,512);
s = abs(F);
Fc = fftshift(F);
sc = abs(Fc);
log_sc = log(1+sc);
figure, subplot 221, imshow(f);
subplot 222, imshow(sc,[]);

subplot 223, imshow(sc,[]);
subplot 224, imshow(log_sc,[]);
figure, subplot 121 
h1=surf(s)
set(h1,'Linestyle','none')
subplot 122 , surf(sc)
h2=surf(sc)
set(h2,'Linestyle','none')
