% Example:
%
% Aritmetic: Subtraction for detection
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

close all
i1 = 20;i2 = i1+100;
j1 = 340;j2 = j1+150;
A = imread('sub1.bmp');
A = imresize(A(i1:i2,j1:j2),[512 512]);
figure(1);
imshow(A,[]);
title('Image A');
enterpause

B = imread('sub2.bmp');
B = imresize(B(i1:i2,j1:j2),[512 512]);
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






