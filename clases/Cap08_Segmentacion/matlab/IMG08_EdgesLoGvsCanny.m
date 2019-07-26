% Example:
%
% Edge detection using LoG and Canny
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

I = double(imread('zebra.bmp'));
figure(1)
imshow(I,[])
[N,M] = size(I);
n = 2;
X = I(1:n:N,1:n:M);
t = [0.0001 0.001  0.001 0.01];
nt = length(t);
s = [1 2 4 8];
ns = length(s);
k = 0;
Etl = [];
Etc = [];
for i = 1:nt
    Eli = [];
    Eci = [];
    for j = 1:ns
        k = k + 1;
        El = edge(X,'log',t(i),s(j));
        Eli = [Eli El];
        Ec = edge(X,'canny',t(i),s(j));
        Eci = [Eci Ec];
    end
    Etc = [Etc; Eci];
    Etl = [Etl; Eli];
end
figure(2)
imshow(Etl)    
title('log')

figure(3)
imshow(Etc)    
title('canny')