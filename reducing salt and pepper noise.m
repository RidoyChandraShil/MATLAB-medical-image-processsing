close all
clear all
clc

f = imread('circuit.jpg');
f1 = rgb2gray(f);
noise = imnoise(f1,'salt & pepper',0.2);
medianFilter = medfilt2(noise);
medianFilter1 = medfilt2(noise,'symmetric');

subplot(221)
imshow(f)
subplot(222)
imshow(noise)
subplot(223)
imshow(medianFilter)
subplot(224)
imshow(medianFilter1)
