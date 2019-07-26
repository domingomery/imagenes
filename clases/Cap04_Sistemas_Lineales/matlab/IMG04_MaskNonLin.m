% Example:
%
% Non-linear filtering using masks pixel by pixel
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

I = imread('eight.tif');
X = imnoise(I,'salt & pepper',0.02);
close all
figure(1)
imshow(I,[]);
title('original');
figure(2)
imshow(X,[]);

title('image with salt + pepper noise');
enterpause

[N,M] = size(X);
n = 3;
k = (n-1)/2;

tic
Y = zeros(N,M);

Xd = double(X);
for i=k+1:N-k
    for j=k+1:M-k
        s = [];
        for p=-k:k
            for q=-k:k
                s = [s ; Xd(i+p,j+q)];
            end
        end
        Y(i,j) = median(s);
    end
end
toc
figure(3)
imshow(Y,[]);
title('imagen filtrada');


% The same operation can be done using medfilt2
% tic;Z = medfilt2(X,[n n]);toc % it is recomended because it is faster.