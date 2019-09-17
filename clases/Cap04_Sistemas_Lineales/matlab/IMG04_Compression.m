

I = imread('cameraman.tif');
figure(1)
imshow(I)
title('original')
X = double(I);

F = fft2(X);
n = length(F(:));

ii = find(abs(F)<5000);
t = length(ii);


G = F;
G(ii) = 0;

Y = real(ifft2(G));


e = abs(Y(:)-X(:));
figure(2)
imshow(Y,[])
title('compressed')

fprintf('compression: %f%%\n      error: %f\n',t/n*100,mean(e))


