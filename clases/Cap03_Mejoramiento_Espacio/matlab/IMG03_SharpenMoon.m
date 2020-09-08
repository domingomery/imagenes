% Ejmplo para agudizar una imagen
% Una imagen es agudizada (se resaltan sus bordes) sumando a la imagen
% original las frecuencias altas
%
% D.Mery, http://dmery.ing.puc.cl
% PUC-DCC, Septiembre 2008
%
close all
I = imread('moon.tif');
I = double(I);
n = 5;

% L is image I after a low pass filtering
L = conv2(I,ones(n,n)/n^2,'same');

% L is image I after a high pass filtering
H = I-L;

% J is image I plus amplified high frequencies
J = I + 3*H; % > sharp image

figure(1)
title('imagen original');
J(J<0) = 0;
figure(1)
imshow(I,[])
title('original image');


figure(2)
imshow(J,[])
title('restored images');



figure(3)
imshow(H,[])
title('high pass')

figure(1)