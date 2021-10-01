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
