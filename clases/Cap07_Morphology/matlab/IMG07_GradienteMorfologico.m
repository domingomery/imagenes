I = imread('cameraman.tif');
se = strel('disk',1);

I1 = imerode(I,se);
I2 = imdilate(I,se);
G=abs(double(I2)-double(I1));
E = G>60;
figure(1);imshow(I,[]); title('Imagen original');
figure(2);imshow(I1,[]); title('Imagen erosionada (min)');
figure(3);imshow(I2,[]); title('Imagen dilatada (max)');
figure(4);imshow(G,[]); title('Gradiente morfologico');
figure(5);imshow(E);    title('Bordes');
