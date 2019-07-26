% Example:
%
% Non-linear filter
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

fun = @(x) median(x(:));

I = imread('cameraman.tif');
figure(1)
imshow(I)
J = nlfilter(I,[5 5],fun);
figure(2)
imshow(J)