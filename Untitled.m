I = imread('pout.tif');

% figure (1)
% surf(I);
% shading flat

whos I
figure (2)
subplot 221
imshow(I)
subplot 222
imshow(I,[50 120])
subplot 223
imshow(I,[])
subplot 224
imshow(I,128)