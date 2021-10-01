close all
clear all
clc

f=zeros(500,500);
f(100:250,150:350)=1;
figure
subplot 121
imshow(f)
title('Original image');

PQ = paddedsize(size(f));

D0 = 0.05*PQ(1);
H = lpfilter('gaussian', PQ(1), PQ(2), D0);
F=fft2(double(f),size(H,1),size(H,2));
Fr = H.*F;
Fra=abs(ifft2(Fr)); 
Frac=Fra(1:size(f,1), 1:size(f,2));
subplot 122
imshow(Frac, [])
title('Gaussian low pass filter image');

function PQ = paddedsize(AB, CD, param)
    if nargin == 1
        PQ = 2*AB;
    elseif narqin ==2 && -ischar(CD)
        PQ = AB+CD-1;
        PQ = 2*ceil(PQ/2);
    elseif nargin==2
        m=max(AB);
        p = 2^nextpow2(2*m);
        PQ = [p p];
    else
        error('Wrong number of inputs.')
    end
end

function H = lpfilter(type, M, N, D0, n)
    [U, V] = dftuv(M, N);
    D = sqrt(U.^2 + V.^2);
    switch type
    case 'ideal'
       H = double(D <=D0);
    case 'btw'
       if nargin == 4
          n = 1;
       end
       H = 1./(1 + (D./D0).^(2*n));
    case 'gaussian'
       H = exp(-(D.^2)./(2*(D0^2)));
    otherwise
       error('Unknown filter type.')
    end
end

function [U, V]= dftuv(M,N)
    u = 0:M-1;
    v = 0:N-1;
    idx = find(u>M/2);
    u(idx)= u(idx)-M;
    idy = find(v>N/2);
    v(idy)= v(idy)-N;
    [V,U]=meshgrid(v,u);
end
