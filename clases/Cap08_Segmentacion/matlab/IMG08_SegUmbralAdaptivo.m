% Example:
%
% Umbral adaptivo
%
% Computer Vision Course
% (c) Domingo Mery (2015) - http://dmery.ing.puc.cl

I = imread('rice.png');

m = 64;
d = 32;
[N,M] = size(I);
i=1-m+d;
J = zeros(N,M);
while i<N-d
    j = 1-m+d;
    i1 = max([1 i]);
    i2 = min([N i+m-1]);
    while j<M-d;
       j1 = max([1 j]);
       j2 = min([M j+m-1]); 
       K = I(i1:i2,j1:j2);
       t = graythresh(K)*256;
       J(i1:i2,j1:j2) = or(J(i1:i2,j1:j2),K>t);
       imshow(J)
       drawnow
       pause(0)
       j = j+d; 
    end
    i = i+d;
end