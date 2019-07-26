% Example:
%
% Simple border detection
%
% Computer Vision Course
% (c) Domingo Mery (2015) - http://dmery.ing.puc.cl

close all
I = double(imread('rice.png'));
figure(1); imshow(I,[]); title('Original');
enterpause

Mx = [-1 0 1];
Ix = conv2(I,Mx,'same');
figure(2); imshow(Ix,[]); title('Ix = conv2(I,Mx)');
figure(3); imshow(abs(Ix),[]); title('abs(Ix)');
enterpause

My = [-1 0 1]';
Iy = conv2(I,My,'same');
figure(4); imshow(Iy,[]); title('Iy = conv2(I,My)');
figure(5); imshow(abs(Iy),[]); title('abs(Iy)');
enterpause

J = sqrt(Ix.*Ix + Iy.*Iy);
figure(6); imshow(J,[]); title('J = sqrt(Ix.*Ix + Iy.*Yy)');
enterpause

K = J>60;
figure(7); imshow(K,[]); title('K = J>60');
enterpause

figure(8)
Bio_edgeview(I,K)



