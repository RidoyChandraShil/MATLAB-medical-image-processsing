fileFolder = fullfile(matlabroot,'toolbox','images','imdata');
dirOutput = dir(fullfile(fileFolder,'AT3_1m4_*.tif'));
fileNames = {dirOutput.name}';
montage(fileNames, 'Size', [2 5]);
% imwrite(fileNames, 'pout2.jpg')