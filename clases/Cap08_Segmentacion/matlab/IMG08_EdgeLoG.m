% Example:
%
% Edge detection using LoG Filter
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

% LoG Filter
close all
i = input('Image: 1: jirafa, 2: cameraman, 3: circuit, 4: wheel ?');
switch i
    case 1        
        X1 = imread('jirafa.png');
    case 2
        X1 = imread('cameraman.tif');
    case 3
        X1 = imread('circuit.tif');
    case 4
        X1 = imread('wheel.bmp');
end
X = double(imresize(X1,[256 256]));
figure(1);imshow(X,[])
while(1)
    sigma = input('sigma? ');
    E = edge(X,'log',1e-5,sigma);
    figure(2);
    Bio_edgeview(X,E)
    figure(3);
    clf
    mesh(X)
    hold on
    [ii,jj] = find(E==1);
    kk = X(E==1);
    plot3(jj,ii,kk,'r.');
    enterpause
end




