function s = subim(f, m, n, rx, ry)
s = zeros(m,n);
rxend = rx+m-1;
ryend = ry+n-1;
s = f(rx:rxend,ry:ryend);
imshow(s);