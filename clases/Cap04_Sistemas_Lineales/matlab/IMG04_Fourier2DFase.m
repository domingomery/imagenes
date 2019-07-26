I = imread('cameraman.tif');
figure(1)
imshow(I)
title('imagen Original')
F = fft2(I);
Fm = abs(F);   % magnitud
Fp = atan2(real(F),imag(F)); % fase
% Ejemplo 1: se mantiene la magnitud pero fase = 0
Fm1 = Fm;
Fp1 = zeros(size(F));
F1 = Fm1.*(sin(Fp1)+sqrt(-1)*cos(Fp1));
I1 = ifft2(F1);
figure(2)
imshow(log(abs(I1)+1),[])
title('reconstruccion con fase = 0')

% Ejemplo 2: se mantiene la fase pero magnitud = 1
Fm2 = ones(size(F));
Fp2 = Fp;
F2 = Fm2.*(sin(Fp2)+sqrt(-1)*cos(Fp2));
I2 = ifft2(F2);
figure(3)
imshow(abs(I2),[])
title('reconstruccion con magnitud = 1')

