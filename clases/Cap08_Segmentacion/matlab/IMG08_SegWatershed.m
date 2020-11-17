% Ejmplo de Segmentacion usando Watershed
% Ejemplo de help watershed
%

% 1. Make a binary image containing two overlapping circular objects.

center1 = -10;
center2 = -center1;
dist = sqrt(2*(2*center1)^2);
radius = dist/2 * 1.4;
lims = [floor(center1-1.2*radius) ceil(center2+1.2*radius)];
[x,y] = meshgrid(lims(1):lims(2));
bw1 = sqrt((x-center1).^2 + (y-center1).^2) <= radius;
bw2 = sqrt((x-center2).^2 + (y-center2).^2) <= radius;
bw = bw1 | bw2;
I = imread('beans.png');
X = rgb2gray(I)<20;
bw = X;
figure, imshow(bw,'InitialMagnification','fit'), title('bw')
pause

% 2. Compute the distance transform of the complement of the binary image.

D = bwdist(~bw);
figure, imshow(D,[],'InitialMagnification','fit')
title('Distance transform of ~bw')
pause

% 3. Complement the distance transform, and force pixels that don't belong to the objects to be at -Inf.

D = -D;
D(~bw) = -Inf;

% 4. Compute the watershed transform, and display the resulting label matrix as an RGB image.

L = watershed(D);
rgb = label2rgb(L,'jet',[.5 .5 .5]);
figure, imshow(rgb,'InitialMagnification','fit')
title('Watershed transform of D')
pause