% Example:
%
% How to cahnge the size of the images: Basic examples
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


close all
% Example 1: How to reduce the size of an image?

I = imread('chicago.png');
I = I(1:500,1:500);
figure(1)
imshow(I)

J = zeros(100,100,'uint8');
for i=1:100
    for j=1:100
        % J(i,j) = I(5*i,5*j);
        % J(i,j) = uint8(mean2(I(5*i-4:5*i,5*j-4:5*j)));     % mean2 is a Balu's function
        J(i,j) = uint8(mean2(I(indices(i,5),indices(j,5)))); % equivalent to the last one (indices is a Balu's function)
    end
end

figure(2)
imshow(J)
disp('Example 1: 500x500 > 100x100');
enterpause

% Example 2: How to reduce the size of an image?
I = imread('onerice.bmp');
[N,M] = size(I);
figure(3)
imshow(I)
k = 2;
J = zeros(N*k,M*k,'uint8');

for i=1:N*k
    for j=1:M*k
        J(i,j) = I(fix((i-1)/k)+1,fix((j-1)/k)+1);
    end
end
figure(4)
imshow(J)
axis on
disp('Example 2: 64x64 > 128x128 (truncado)');

enterpause

% Example 3-I: from 64x64 > 100x100 (using nearest pixel)
I = imread('onerice.bmp');
J = zeros(100,100,'uint8');
for i=1:100
    i0 = round(64/100*i);
    if and(i0>0,i0<=64);
        for j=1:100
            j0 = round(64/100*j);
            if and(j0>0,j0<=64);
                J(i,j) = I(i0,j0);
            end
        end
    end
end
figure(5)
imshow(J)
axis on
disp('Example 3-I: from 64x64 > 100x100 (using nearest pixel)');
enterpause


% Example 3-II: from 64x64 > 100x100 (using bilinear interpolation)
I = imread('onerice.bmp');
J = zeros(100,100,'uint8');
for i=1:100
    i0 = 64/100*i;
    ni0 = fix(i0);
    di0 = i0-ni0;
    if and(ni0>0,ni0<64);
        for j=1:100
            j0 = 64/100*j;
            nj0 = fix(j0);
            dj0 = j0-nj0;
            if and(nj0>0,nj0<64);
                A = di0*dj0;
                B = di0*(1-dj0);
                C = (1-di0)*dj0;
                D = (1-di0)*(1-dj0);
                J(i,j) = A*I(ni0+1,nj0+1)+B*I(ni0+1,nj0)+C*I(ni0,nj0+1)+D*I(ni0,nj0);
            end
        end
    end
end
figure(6)
imshow(J)
axis on
disp('Example 3-II: from 64x64 > 100x100 (using bilinear interpolation)');









