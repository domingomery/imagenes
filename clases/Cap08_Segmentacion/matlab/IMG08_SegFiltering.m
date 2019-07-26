% Example:
%
% Segmentation using Filtering and Threshols
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


close all
clear all

I = double(imread('coins.png'));

figure(1)
imshow(I,[])
ra = input('Size of the circle mask? (example 29 pixels)');

N = fix(2*ra +1.5);
n = (N-1)/2;
M = zeros(N,N);

for i=1:N
    for j=1:N;
        r = sqrt((i-n)^2+(j-n)^2);
        if r < ra
            M(i,j) = 1;
        end
    end
end
M = M/sum(M(:));
figure(2)
imshow(M,[])
J = conv2(I,M,'same');
figure(3)
imshow(J,[]);
figure
mesh(J)

% local maxima
D1 = Bim_d2(J); 
D2 = abs(D1)>0.5; 
D3 = bwareaopen(D2,8); 
D4 = imclearborder(D3); 
D5 = imopen(bwareaopen(bwfill(D4,'holes'),60),ones(3,3)); 
figure
Bio_edgeview(I,D5)
R = D5;
[L,n] = bwlabel(R);
figure
imshow(I,[])
hold on
for i=1:n
    [ii,jj] = find(L==i);
    plot(mean(jj),mean(ii),'rx');
    plot(mean(jj),mean(ii),'ro');
end
