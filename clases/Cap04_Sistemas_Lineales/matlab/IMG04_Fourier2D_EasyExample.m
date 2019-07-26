I = zeros(512,512);
I(240:269,240:269) = 1;
figure(1)
imshow(I,[])
figure(2)
mesh(I)
F = fft2(I);
S = fftshift(log(abs(F)+1));
figure(3)
imshow(S,[])
figure(4)
mesh(S)