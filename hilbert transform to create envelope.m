t=(1:131072)*(1e-4);
gt=sin(t).*sin(10*t);
envelope=abs(hilbert(gt));
figure;
plot(t,gt,'b-',t,imag(hilbert(gt)),'k--',t,envelope,'r:')
