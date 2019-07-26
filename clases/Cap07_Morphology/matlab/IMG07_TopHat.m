I = imread('rice.png');
figure(1), imshow(I); title('Imagen original');
se = strel('disk',12);

H1 = imerode(I,se);
H = imclose(H1,se);  % It is % H = imopen(I,se);
J = imsubtract(I,H); % It is % J = imtophat(I,se); 
figure(2), imshow(J); title('Top Hat');
t = graythresh(J);
K = im2bw(J,t);
figure(3), imshow(H); title('Apertura');
figure(4), imshow(K); title('Segmentacion');


