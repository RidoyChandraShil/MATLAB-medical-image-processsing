f=imread('skeleton.jpg');
m=mean(f(:));
m1=[m/2 m 2*m];
E=[0.5 0.9 2];
k=1;
for i=1:3
    for j=1:3
        f2(:,:,:,k) = 1./(1 + (m1(i)/(double(f))).^E(j));
        figure(k)
        imshow(f2(:,:,:,k))
        title([m1(i),E(j)])
        k=k+1;
    end
end
figure(10)
montage(f2,'Size',[3,3])
