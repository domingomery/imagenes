% Example:
%
% In this example is a visualization of the erosion/dilation process.
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


close all

% input image
z = imread('rice.png');
x = z(155:190,125:160)>120;
x(8:10,28:30) = 1;
x(16:18,20:22) = 0;
x = double(x);
[N,M] = size(x);
subplot(1,4,1);subimage(x);

%mask
p = input('1:dilation, 2:erosion? ');
m = input('mask size: ');

m1 = m;
m2 = m;

y = ones(m1,m2);



n1 = (m1-1)/2;
n2 = (m2-1)/2;
r = zeros(N,M);
for i=n1+1:N-n1
    for j=n2+1:M-n2
        t = x(-n1+i:n1+i,-n2+j:n2+j).*y(m1:-1:1,m2:-1:1);
        z = x;
        z(-n1+i:n1+i,-n2+j:n2+j) = t;
        z(-n1+i,-n2+j:n2+j) = 1;
        z(n1+i,-n2+j:n2+j)  = 1;
        z(-n1+i:n1+i,-n2+j) = 1;
        z(-n1+i:n1+i,n2+j)  = 1;
        subplot(1,4,2);subimage(z);
        subplot(1,4,3);imshow(x(-n1+i:n1+i,-n2+j:n2+j));
        switch p
            case 1 % dilation
                r(i,j) = max(t(:));
            case 2 % erosion
                r(i,j) = min(t(:));
        end
        subplot(1,4,4);subimage(abs(r));
        pause
    end
end