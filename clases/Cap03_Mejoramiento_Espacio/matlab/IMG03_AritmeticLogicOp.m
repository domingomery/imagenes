% Example:
%
% Logic Operations
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

close all
A = zeros(256,256);
A(61:240,21:180) = ones(180,160);
B = zeros(256,256);
B(31:90,151:210) = ones(60,60);
figure,imshow(A), title('A');pause
figure,imshow(B), title('B');pause
figure,imshow(not(A)), title('not(A)');pause
figure,imshow(and(A,B)), title('and(A,B)');pause
figure,imshow(or(A,B)), title('or(A,B)');pause
figure,imshow(xor(A,B)), title('xor(A,B)');pause
figure,imshow(and(not(A),B)), title('and(not(A),B)');pause

