% Example:
%
% Edge detection using LoG Filter
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

% close all
i = input('Test image: 1, 2, 3 or 4 ?');
switch i
    case 1
        X1 = fspecial('gaussian',256,50);
        X1 = X1/max2(X1)*255;
    case 2
        X1 = fspecial('gaussian',256,50);
        X2 = imresize(X1,0.25);
        [n,m] = size(X2);
        X1(1:n,1:m) = X1(1:n,1:m)+X2;
        X1 = X1/max2(X1)*255;
    case 3
        X1 = fspecial('gaussian',256,50);
        X2 = imresize(X1,0.25);
        [n,m] = size(X2);
        X1(1:n,1:m) = X1(1:n,1:m)+X2;
        X1 = X1/max2(X1)*255;
        X1(21:40,221:240) = 255;
        
    case 4
        X1 = fspecial('gaussian',256,50);
        X2 = imresize(X1,0.25);
        [n,m] = size(X2);
        X1(1:n,1:m) = X1(1:n,1:m)+X2;
        X1(end-n+1:end,end-m+1:end) = X1(end-n+1:end,end-m+1:end)+X2;
        X1 = X1/max2(X1)*255;
        X1(21:40,221:240) = 255;
end
sigma = input('sigma?')
% disp('Segmentation using LoG with sigma = 3')
X = double(imresize(X1,[256 256]));
% sigma = 3;
E = edge(X,'log',1e-5,sigma);
figure(2);
Bio_edgeview(X,E)
figure(3);
clf
imshow(X)
mesh(X)
colorbar
hold on
[ii,jj] = find(E==1);
kk = X(E==1);
plot3(jj,ii,kk,'r.');
figure(2)
figure(1);imshow(X,[])




