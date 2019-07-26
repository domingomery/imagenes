% Example:
%
% Expanding histogram
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

%close all
%clear all

i = input('1: pout 2: clown 3: tire?');


switch i
    case 1
        X = imread('pout.tif');
    case 2
        load clown
        X = uint8(X);
    case 3
        X = imread('tire.tif');
end
figure;imshow(X),title('X: Original');
figure;imhist(X),title('Histogram of X');
enterpause

Xd = double(X);

Xmin = min2(Xd);  % min2 & max2 are from Balu Toolbox... you can use min(X(:)) and max(X(:))
Xmax = max2(Xd);

Xdif = Xmax-Xmin;

Yd = (Xd-Xmin)/Xdif*255;

Y = uint8(round(Yd));

figure;imshow(Y),title('Y: Expanded');
figure;imhist(Y),title('Histogram of Y');




