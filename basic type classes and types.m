a= magic(5);
a=a*10;
b= uint8(a)
c= im2uint16(b)
d= im2double(b)
e= mat2gray(b)
f= im2single(b)
g= im2bw(b)

%% with image
f=imread('pout.tif');
g=im2uint8(f);
h=uint16(f)
g1= im2double(f);
g2= mat2gray(f);
g3= mat2gray(f,[75 250]);
figure(1)
subplot 151
imshow(f)
subplot 152
imshow(g)
subplot 153
imshow(g1)
subplot 154
imshow(g2)
subplot 155
imshow(g3)
