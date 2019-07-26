% Example:
%
% Image filtering using Fourier 1D
%
% Computer Vision Course
% (c) Domingo Mery (2015) - http://dmery.ing.puc.cl

% Input image
close all
I = double(imread('zebra_noise.png'));
imshow(uint8(I))
title('Original Image');
axis on
figure
imshow(uint8(I))
title('Original Image');
axis on
hold on

% Initialization
N = 512;
Ji = zeros(N,N);
Jj = zeros(N,N);

%                         _______
% Ideal filter in 1D ____|       |____
%
d = 85;
W = zeros(1,N);W(1:d+1) = 1;W(N-d+1:N) = 1; % d+1 left and d right


x = I(128,:);
plot([1 512],[128 128],'r')
plot(-x+400,'g')
figure
subplot(3,2,1)
plot(x);
title('x: Line 128 of the image')
axis([1 N 0 256]);

subplot(3,2,2)
f = fft(x);
plot(abs(f));
title('f: FFT of x')
axis([1 N 0 5e4]);

subplot(3,2,4)
plot(W)
axis([1 N 0 1.1]);
title('W: mask')

subplot(3,2,6)
g = f.*W;
plot(real(g));
title('g: f.*W (filtering)')
axis([1 N 0 5e4]);

subplot(3,2,5)
y = ifft(g);
plot(real(y));
title('y: ifft(g)')
axis([1 512 0 256]);

enterpause

title('Filter');
tic

% Filtering in j direction
for i=1:N
    x = I(i,:);        % i-th row of I
    f = fft(x);        % Fourier transform of x
    g = f.*W;         % Filtering in frequency domain
    y = ifft(g);       % Inverse transform
    Ji(i,:) = real(y); % filtered image (imaginar component could be spurious)
end

% Filtering in i direction
for j=1:N
    x = I(:,j);        % j-th column of I
    f = fft(x);        % Fourier transform of x
    g = f.*W';         % Filtering in frequency domain
    y = ifft(g);       % Inverse transform
    Jj(:,j) = real(y); % filtered image (imaginar component could be spurious)
end
figure
imshow(uint8(Ji))
title('Filtered in i-direction');
figure
imshow(uint8(Jj))
title('Filtered in j-direction');

toc


% Average of both images
E = (Ji+Jj)/2;

% Image adjust (minimum and maximum of E are 0 and 255 respectively)
E = E-min2(E);
E = E/max2(E)*255;

% Output
figure
imshow(uint8(E))
title('Filtered Image');
figure
imshow(uint8(E))
title('Filtered Image');
hold on
x = E(128,:);
plot([1 512],[128 128],'r')
plot(-x+400,'g')


