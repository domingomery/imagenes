% Example:
%
% Multiplication of color image by a binary image
%
% Computer Vision Course
% (c) Domingo Mery (2015) - http://dmery.ing.puc.cl
I = imread('lotoflower.jpg');
close all
figure(1)
imshow(I)
title('Original Image')

S = Bim_segbalu(I); % Segmentation using Balu Toolbox

figure(2)
imshow(S); 
title('Segmentation')

figure(3)
Bio_edgeview(I,bwperim(S),[1 0 0],5)
title('Segmentation')
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

Rs = double(R).*double(S);
Gs = double(G).*double(S);
Bs = double(B).*double(S);

J = zeros(size(I));
J(:,:,1) = Rs;
J(:,:,2) = Gs;
J(:,:,3) = Bs;
figure(4)
imshow(uint8(round(J)))
title('Output Image')

figure(1)

