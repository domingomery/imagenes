% Example:
%
% Ede detection using morphological gradient
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

close all
figure(1)
I  = imread('X1.png');
imshow(I); title('original')
se = strel('disk',1);
Id  = imdilate(I,se);
Ie = imerode(I,se);
G  = abs(Id-Ie);
figure(2)
imshow(G,[]);  title('morphological gradient')
th = max2(G)/4;
E = G>th;
figure(3);  
imshow(E);title('edges')
figure(4)
Bio_edgeview(I,E)

