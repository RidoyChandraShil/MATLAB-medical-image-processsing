fileFolder = fullfile(matlabroot,'toolbox','images','imdata');
dirOutput = dir(fullfile(fileFolder,'AT3_1m4_*.tif'));
fileNames = {dirOutput.name}';
montage(fileNames, 'Size', [2 5]);
% imwrite(fileNames, 'pout2.jpg')

%% another approach plus scaling
fullfile(matlabroot,'toolbox/images/imdata')
x=dicomread('knee1.dcm')
y=mat2gray(x)
% z=imadjust(y,[0.25 0.75],[0 1],0.85)
montage(y)
% dirOutput = dir(fullfile(fileFolder,'knee1.dcm'));
% fileNames = {dirOutput.name}';
% f=montage(fileNames, 'Size', [20 20]);
% % f1=uint8(f);
% % imwrite(f1,'montage_10.tif','tif');
