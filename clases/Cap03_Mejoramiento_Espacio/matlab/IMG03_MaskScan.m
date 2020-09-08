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
[N,M] = size(x);
subplot(1,4,1);subimage(x/256);

%mask
p = input('1:average, 2:median, 3:vertical edges, 4:horizontal edges: ');
m = input('mask size: ');


switch p
    case 1
        y = ones(m,m)/m^2;
    case 2
        y = ones(m,m);
    case 3
        y = zeros(m,m);
        y(:,1)   = -1;
        y(:,end) = 1;
    case 4
        y = zeros(m,m);
        y(1,:)   = -1;
        y(end,:) = 1;
end



[m1,m2] = size(y);

n1 = (m1-1)/2;
n2 = (m2-1)/2;
r = zeros(N,M);
key = '';
for i=n1+1:N-n1
    for j=n2+1:M-n2
        t = x(-n1+i:n1+i,-n2+j:n2+j).*y(m1:-1:1,m2:-1:1);
        z = x;
        z(-n1+i:n1+i,-n2+j:n2+j) = t;
        z(-n1+i,-n2+j:n2+j) = 256;
        z(n1+i,-n2+j:n2+j)  = 256;
        z(-n1+i:n1+i,-n2+j) = 256;
        z(-n1+i:n1+i,n2+j)  = 256;
        subplot(1,4,2);subimage(z/256);
        subplot(1,4,3);imshow(x(-n1+i:n1+i,-n2+j:n2+j)/256);
        if p==2
            r(i,j) = median(t(:));
        else
            r(i,j) = sum(t(:));
        end
        subplot(1,4,4);subimage(abs(r/256));
        if isempty(key)
            key = input('','s');
        else
            pause(0)
        end
    end
end