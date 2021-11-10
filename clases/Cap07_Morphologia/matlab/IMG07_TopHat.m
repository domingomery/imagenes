%k = input('rice = 1, frutos = 2: ');
k = 2;
if k==1
    I = imread('rice.png');
    n = 12;
    th = 75;
    amin = 10;
else
    I = imread('frutos.png');
    n = 45;
    th = 80;
    amin = 40;
end

se = strel('disk',n);


figure(1), imshow(I); title('Imagen original');



I1 = imerode(I,se);
figure(2), imshow(I1); title('Erosion');


I2 = imdilate(I1,se);
figure(3), imshow(I2); title('Apertura');

I3 = imsubtract(I,I2);
figure(4), imshow(I3,[]); title('Original - Apertura');


I4 = I3> th;
figure(5), imshow(I4); title('Umbral');


I5 = bwareaopen(I4,amin);
figure(6), imshow(I5); title('Final');

figure(7)
Bio_edgeview(Bim_lin(I3),bwperim(I5),[1 0 0],2); title('Final');




% H1 = imerode(I,se);
% H = imclose(H1,se);  % It is % H = imopen(I,se);
% J = imsubtract(I,H); % It is % J = imtophat(I,se);
% figure(2), imshow(J); title('Top Hat');
% t = graythresh(J);
% K = im2bw(J,t);
% figure(3), imshow(H); title('Apertura');
% figure(4), imshow(K); title('Segmentacion');


