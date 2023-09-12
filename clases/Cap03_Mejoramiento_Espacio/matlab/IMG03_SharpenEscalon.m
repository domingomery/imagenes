X = [0.1*ones(512,256) 0.7*ones(512,256)];
figure(1)
imshow(X)
title('original')
k=21;
g = fspecial('gaussian',k,k/8.5);
h=g((k-1)/2,:);
figure(2)
h=h/sum(h);plot(h);

Y = conv2(X,h,'same');
figure(3)
imshow(Y)
title('blur')

q = -0.7;
Y1 = conv2(Y ,[-1 0 1],'same');
Y2 = conv2(Y1,[-1 0 1],'same');
figure(4)
Xr = Y+q*Y2;
imshow(Xr)
title('sharpen')


figure(5)
x  = X(100,:);
y  = Y(100,:);
xr = Xr(100,:);

plot([x' xr' y'],'linewidth',2)
axis([200 300 -1 2])
legend({'original','sharpen','blur'})


figure(6)
Z = Y;
Z(256:end,:) = Xr(256:end,:);
imshow(Z)
ylabel(' sharpen | blur ')


