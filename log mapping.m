%% log mapping of 0-255
clc;
clear all;
close all;
input_range=0:255;
output_rang = log(1 +input_range);
plot(input_range,output_rang,'k');
xlabel('input range')
ylabel('output range')
xlim([0 255])
  
%% log mapping of an image
close all
clear all
clc
f=imread('pout.tif');
f=mat2gray(f);
f1=im2double(f);
[r,c]=size(f);
c1=1.7;
c2=2.5;
for i=1:r
    for j=1:c
        g1(i,j)=c1*log(1+(f1(i,j)));
        g2(i,j)=c2*log(1+(f1(i,j)));
    end
end
g3=im2uint8(g1);
g4=im2uint8(g2);
subplot 151
imshow(f1)
subplot 152
imshow(g1)
subplot 153
imshow(g2)
subplot 154
imshow(g3)
subplot 155
imshow(g4)
