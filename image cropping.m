f=imread('pout.tif');
m=200;
n=150;
rx=1;
ry=1;
newim=subim(f,m,n,rx,ry);
function s = subim(f, m, n, rx, ry)
  s = zeros(m,n);
  rxend = rx+m-1;
  ryend = ry+n-1;
  s = f(rx:rxend,ry:ryend);
  imshow(s);
end
