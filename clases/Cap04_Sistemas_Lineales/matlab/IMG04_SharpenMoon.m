% Ejmplo para agudizar una imagen
% Una imagen es agudizada (se resaltan sus bordes) sumando a la imagen
% original su segunda derivada multplicada por un escalar
%
% D.Mery, http://dmery.ing.puc.cl
% PUC-DCC, Septiembre 2008
%
close all
I = imread('../images/moon.tif');
I = double(I);
% I = conv2(I,ones(3,3),'same');
figure(1)
title('imagen original');
L = [0 1 0; 1 -4 1; 0 1 0];
J = I-3*(conv2(I,L,'same'));
J(J<0) = 0;
imshow([I J],[])
title('original and restored images');


figure(2)
imshow(abs(conv2(I,L,'same')),[])
title('segunda derivada')

figure(1)