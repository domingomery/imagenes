% Example:
%
% Superimposition of one image into another. The idea of this program is
% to put a seagull (that is in image seagull.jpg) into an ocean picture
% (ocean.jpg) that originally has no seagull.
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

close all
warning('off','all');

% Read seagull color image
Gc = imread('seagull.jpg');
figure 
imshow(Gc);

% Conversion to grayscale image
Gg = rgb2gray(Gc);

% Seagull segmentation
figure 
imshow(Gg);
Gs = bwareaopen(Gg<55,20);
figure 
imshow(Gs);

% Seagull resize and histogram
Gr      = imresize(Gs,0.25);
[ii,jj] = find(Gr);          % indices (i,j) of the seagull
qq      = find(Gr);          % index of column 
n       = length(ii);
figure
imhist(Gc(qq))
title('Seagull histogram')

% Brighter and smaller image
Gcr = 8*imresize(Gc,0.25); 

% Read ocean color image
M = imread('ocean.jpg');
figure; 
imshow(M);
title('before')

Mnew = M;

% Location of the seagull in ocean image
i0 = 100;
j0 = 500;

% Superimposition
for i=1:n
    Mnew(ii(i)+i0,jj(i)+j0,:) = Gcr(ii(i),jj(i),:);
end

% Display results
figure
imshow(Mnew)
title('after')
    
    
    

