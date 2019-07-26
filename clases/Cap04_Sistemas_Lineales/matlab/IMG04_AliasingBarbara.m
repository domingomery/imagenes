close all
data = input('Seleccione imagen (Barbara = 1, Raul = 2): ');
if data==1
   I = double(imread('barbara.tiff'));
   m = 3;
else
   I = double(rgb2gray(imread('CamisaRayas.jpg')));
   m = 7;
end
Io = conv2(I,ones(m,m)/m/m,'same');
[N,M] = size(I);
figure(1)
imshow(I,[])
title('imagen original');
disp('aproveche para cambiar tamano de la ventana con el mouse... por que sucede?');
n = input('subsampling rate = (e.g. 2) ? ');
figure(2)
J = I(1:n:N,1:n:M);
Jo = Io(1:n:N,1:n:M);
imshow(J,[])
title('subsampled image');
axis on
figure(3)
imshow(Jo,[])
title('subsampled filtered image');
axis on
