% no funciona bien
I = double(imread('rice.png'));
F = fft2(I);
% Fs = fftshift2(F);
Fs = F;
figure(1)
imshow(I,[])
figure(2)
imshow(log(abs(Fs)+1),[])
p = vl_click; 
i = p(2);
j = p(1);
m = 75;
n = (m-1)/2;
s = m/4;
f = fspecial('gaussian',m,s);
f = 1-f/max2(f);

Fg = ones(size(Fs));
Fg(i-n:i+n,j-n:j+n) = f;
i = 257-i;
j = 257-j;
Fg(i-n:i+n,j-n:j+n) = f;
Ft = Fs.*Fg;
figure(3)
imshow(log(abs(Ft)+1),[])
J = ifft2(fftshift(Ft));
Jr = real(J);
figure(4)
imshow(Jr,[])
figure
imshow(abs(I-Jr),[])


