% Original
F = rgb2gray(imread('puerta.png'));
figure(1); imshow(F,[]); title('original');
axis on

% Blured
n = input('degradation? ');
h = ones(1,n)/n;
G = IMG06_blur(F,h);
figure(2); imshow(G,[]); title('blured');
axis on

% Restoration
Fs = IMG06_minio(G,h);
figure(3); imshow(abs(Fs),[]); title('restored');
