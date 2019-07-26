% Example:
%
% Conversion color to grayscale in a region of the image. In this example,
% the red dress will be red, the rest wil be converted to
% a grayscale image.
%
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl
clt
warning off
I = imread('redgirl.jpg');

figure(1);
imshow(I)
title('before')
enterpause
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

M = zeros(size(R));M(580:1100,320:650)=1;
% M = ones(size(R));
K = and(M,and(R>150,G<80));
X = imfill(K,'holes');
figure(2)
imshow(X)
title('segmentation')
enterpause
Y = Bim_color2bwreg(I,X);
figure(3)
imshow(Y)
title('after')
