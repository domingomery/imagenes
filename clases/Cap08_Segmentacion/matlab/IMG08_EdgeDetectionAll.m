% Example:
%
% Edge detection examples
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


close all
J = imread('../images/flowers.jpg');
I = double(imresize(rgb2gray(J),[512 512]));
figure(1)
imshow(I,[])
title('Original')

% 1: simple
th = 15;
My = [-1 0 1];
Mx = My';
Iy = imfilter(I,My);
Ix = imfilter(I,Mx);
G = sqrt(Ix.*Ix+Iy.*Iy);
E = G>th;
figure(2)
Bio_edgeview(I,E)
title('Sobel')

% 2: Sobel
th = 45;
My = [-1 0 1
      -2 0 2
      -1 0 1];
Mx = My';
Iy = imfilter(I,My);
Ix = imfilter(I,Mx);
G = sqrt(Ix.*Ix+Iy.*Iy);
E = G>th;
figure(3)
Bio_edgeview(I,E)
title('Simple')


% 3: LoG
E = edge(I,'log',0.4,2);
figure(4)
Bio_edgeview(I,E)
title('LoG')

% 4: Canny
E = edge(I,'canny',0.05,2);
figure(5)
Bio_edgeview(I,E)
title('Canny')

% 5: Morphological Gradient
th = 20;
Id = imdilate(I,ones(3,3));
Ie = imerode(I,ones(3,3));
G = abs(Id-Ie);
E = G>th;
figure(6)
Bio_edgeview(I,E)
title('Morphological')


