f=uint8(magic(4))
g=magic(4)
[p, pmax, pmin, pn] = improd(f,g)

immultiply(f,uint8(g))

function [p, pmax, pmin, pn] = improd(f, g)
fd = double(f);
gd = double(g);
p = fd.*gd;
pmax = max(p(:));
pmin = min(p(:));
pn = mat2gray(p);
end

%%
f=[1 2;3 4];
g=[5 6;7 8];
function [p, pmax, pmin, pn] = improd(f, g)
fd = double(f);
gd = double(g);
p = fd.*gd;
pmax = max(p(:));
pmin = min(p(:));
pn = mat2gray(p);
end

%% cropping and multiplying images
f1=imread('shadow.tif');
g1=imread('pout.tif');
newf1=subim(f1,223,240,1,1);
newg1=subim(g1,223,240,1,1);
result=improd(newf1,newg1);
function s = subim(f, m, n, rx, ry)
s = zeros(m,n);
rxend = rx+m-1;
ryend = ry+n-1;
s = f(rx:rxend,ry:ryend);
imshow(s);
end
function [p, pmax, pmin, pn] = improd(f, g)
fd = double(f);
gd = double(g);
p = fd.*gd;
pmax = max(p(:));
pmin = min(p(:));
pn = mat2gray(p);
figure(1)
imshow(f,[])
figure(2)
imshow(g,[])
figure(3)
imshow(p,[])
end
