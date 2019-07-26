% Example:
%
% Aritmetic: Subtraction for detection
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

close all
A = imread('sub1.bmp');
figure(1);
imshow(A,[]);
title('Image A');
enterpause

B = imread('sub2.bmp');
figure(2);
imshow(B,[]);
title('Image B')
enterpause

S = abs(A-B);
figure(3);
imshow(S,[]);
title('Image S = |A-B|');
colorbar
enterpause

D = S>60;
figure(4);
imshow(D,[]);
title('Image D > 40');
enterpause

R = bwareaopen(D,100);
figure(5);
imshow(R,[]);
title('Elimination of small regions (< 100 pixels)');
enterpause

M = imclose(R,ones(7,7));
E = bwperim(M);
figure(6)
Bio_edgeview(B,E)
title('Detection')






