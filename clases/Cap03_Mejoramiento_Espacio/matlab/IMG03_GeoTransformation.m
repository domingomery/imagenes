% Example:
%
% Geometric Transformations (zoom in/out, scale, translation, rotation, 
% radial, tangential)
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


close all
%[X,mp] = imread('chicago.png');
[X,mp] = imread('barco.png');
X = imresize(X,[256 256]);

figure(1)
imshow(X,mp)
axis on
title('original')

[N,M] = size(X);

enterpause



% Translation
Y = zeros(N,M);

i0 = 60;
j0 = 126;

for i=1:N
    for j=1:M
       ip = fix(i+i0);
       jp = fix(j+j0);
       if (jp>=1) && (jp<=M) && (ip>=1) && (ip<=N)
           Y(i,j) = X(ip,jp);
       end
   end
end

figure(2)
imshow(Y,mp)
axis on
title(sprintf('Translation (%d,%d)',i0,j0))
           
enterpause

% Rotation

Y = zeros(N,M);
th = 30*pi/180;

for i=1:N
    for j=1:M
       m = [cos(th) sin(th);-sin(th) cos(th)]*[i j]';
       ip = fix(m(1)+0.5);
       jp = fix(m(2)+0.5);
       if (jp>=1) && (jp<=M) && (ip>=1) && (ip<=N)
           Y(i,j) = X(ip,jp);
       end
   end
end

figure(3)
imshow(Y,mp)
axis on
title(sprintf('rotation %f',th*180/pi))

enterpause




% Rotation and translation

Y = zeros(N,M);
th = 30*pi/180;
i0 = 128;
j0 = 128;

for i=1:N
    for j=1:M
       m = [cos(th) sin(th);-sin(th) cos(th)]*[i-i0 j-j0]'+[i0 j0]';
       ip = fix(m(1)+0.5);
       jp = fix(m(2)+0.5);
       if (jp>=1) && (jp<=M) && (ip>=1) && (ip<=N)
           Y(i,j) = X(ip,jp);
       end
   end
end

figure(3)
imshow(Y,mp)
axis on
title(sprintf('roation %f and traslation (%d,%d)',th*180/pi,i0,j0))

enterpause


% Scaling

Y = zeros(N,M);
ki = 2;
kj = 3;

for i=1:N
    for j=1:M
       m = [ki*i kj*j]';
       ip = fix(m(1)+0.5);
       jp = fix(m(2)+0.5);
       if (jp>=1) && (jp<=M) && (ip>=1) && (ip<=N)
           Y(i,j) = X(ip,jp);
       end
   end
end

figure(4)
imshow(Y,mp)
axis on
title(sprintf('scaling (%d,%d)',ki,kj))

enterpause

% Scaling

Y = zeros(N,M);
ki = 1/2;
kj = 1/3;

for i=1:N
    for j=1:M
       m = [ki*i kj*j]';
       ip = fix(m(1)+0.5);
       jp = fix(m(2)+0.5);
       if (jp>=1) && (jp<=M) && (ip>=1) && (ip<=N)
           Y(i,j) = X(ip,jp);
       end
   end
end

figure(5)
imshow(Y,mp)
axis on
title(sprintf('scaling (%f,%f)',ki,kj))

enterpause


% Afin
Y = zeros(N,M);

i0 = -70;
j0 = -60;

for i=1:N
    for j=1:M
       ip = fix(2*i+0.4*j+i0);
       jp = fix(0.3*i+2.3*j+j0);
       if (jp>=1) && (jp<=M) && (ip>=1) && (ip<=N)
           Y(i,j) = X(ip,jp);
       end
   end
end




figure(6)
imshow(Y,mp)
axis on
title(sprintf('Perspective (%d,%d)',i0,j0))

enterpause


% Radial distortion

Y = zeros(N,M);

i0 = 128;
j0 = 128;

for i=1:N
    for j=1:M
       [th,r] = cart2pol(i-i0,j-j0);
       rp  = sqrt(r*r+r^3)/10;
       thp = th ;
       ip = fix(rp*cos(thp)+i0+0.5);
       jp = fix(rp*sin(thp)+j0+0.5);
       if (jp>=1) && (jp<=M) && (ip>=1) && (ip<=N)
           Y(i,j) = X(ip,jp);
       end
   end
end

figure(7)
imshow(Y,mp)
axis on
title(sprintf('radial distortion'))

enterpause


% Tangential distortion

Y = zeros(N,M);

i0 = 128;
j0 = 128;

for i=1:N
    for j=1:M
       [th,r] = cart2pol(i-i0,j-j0);
       rp  = r;
       thp = th + sin(th)/8;
       ip = fix(rp*cos(thp)+i0+0.5);
       jp = fix(rp*sin(thp)+j0+0.5);
       if (jp>=1) && (jp<=M) && (ip>=1) && (ip<=N)
           Y(i,j) = X(ip,jp);
       end
   end
end

figure(8)
imshow(Y,mp)
axis on
title(sprintf('tangential distortion'))

