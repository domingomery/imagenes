% Example:
%
% Implementation of mask filters pixel by pixel
% (it is recomeded to use command imfilter) 
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

X = double(imread('chicago.png'));
close all
figure(1)
imshow(X,[]);
title('original');

[N,M] = size(X);
n = 11;
F = ones(n,n)/n^2;
k = (n-1)/2;


tic
Y = zeros(N,M);

for i=k+1:N-k
    for j=k+1:M-k
        s = 0;
        for p=-k:k
            for q=-k:k
                s = s + F(p+k+1,q+k+1)*X(i+p,j+q);
            end
        end
        Y(i,j) = s;
    end
end
toc
figure(2)
imshow(Y,[]);
title('filtered');


% WARNING: The same operation can be done using imfilter
tic;Z = imfilter(X,F);toc % it is recomended because it is faster.