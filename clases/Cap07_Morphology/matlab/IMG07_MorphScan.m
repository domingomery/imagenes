% Example:
%
% This example is a visualization of the filtering process using a mask.
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


close all

% input image
x = imread('rice.png');
x = x(155:190,125:160);
x(8:10,28:30) = 190;
x = double(x);
A = x>120;
[N,M] = size(A);
subplot(1,4,1);subimage(A);

%mask
p = input('1:dilation 2:erosion ');
m = input('mask size: ');

B = ones(m,m);
mm2 = m*m;

[m1,m2] = size(B);

n1 = (m1-1)/2;
n2 = (m2-1)/2;
r = zeros(N,M);
for i=n1+1:N-n1
    for j=n2+1:M-n2
        z = A;
        z(-n1+i:n1+i,-n2+j:n2+j) = 0;
        z(-n1+i,-n2+j:n2+j) = 1;
        z(n1+i,-n2+j:n2+j)  = 1;
        z(-n1+i:n1+i,-n2+j) = 1;
        z(-n1+i:n1+i,n2+j)  = 1;
        subplot(1,4,2);subimage(z);
        subplot(1,4,3);imshow(A(-n1+i:n1+i,-n2+j:n2+j));
        t = double(A(-n1+i:n1+i,-n2+j:n2+j)).*double(B);
        s = sum(t(:));
        if p==1
            if s>0
                r(i,j) = 1;
            end
        else
            if s==mm2
                r(i,j) = 1;
            end
        end
        subplot(1,4,4);subimage(r);
        pause
    end
end