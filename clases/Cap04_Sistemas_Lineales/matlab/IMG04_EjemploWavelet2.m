% from https://www.youtube.com/watch?v=dSi9mLaa-WE&t=462s
% (c)   rashi agrawal
clear all ; close all
x = imread('barbara.tiff');x = x(1:402,:);
x = imresize(x,[512 512]);
figure; imshow(x);


% STEP 1
[xa,xh,xv,xd] = dwt2(x,'db2');
X1 = [xa*0.003 log10(xv)*0.3 ; log10(xh)*0.3 log10(xd)*0.3] ;% for visualization
figure ; imshow(X1)

% STEP 2
[xaa,xhh,xvv,xdd] = dwt2(xa,'db2');
X11 = [ xaa*0.001 log10(xvv)*0.3 ; log10(xhh)*0.3 log10(xdd)*0.3 ] ;
[r,c] = size(xv);
X1(1:r,1:c) = X11(1:r,1:c);
figure ; imshow(X1)


% STEP 3
[xaaa,xhhh,xvvv,xddd] = dwt2(xaa,'db2');
X111 = [ xaaa*0.0007 log10(xvvv)*0.3 ; log10(xhhh)*0.3 log10(xddd)*0.3 ] ;
[r,c] = size(xvv);
X1(1:r,1:c) = X111(1:r,1:c);
figure ; imshow(X1)

% STEP 4
[xaaaa,xhhhh,xvvvv,xdddd] = dwt2(xaaa,'db2');
X1111 = [ xaaaa*0.0004 log10(xvvvv)*0.3 ; log10(xhhhh)*0.3 log10(xdddd)*0.3 ] ;
[r,c] = size(xvvv);
X1(1:r,1:c) = X1111(1:r,1:c);
figure ; imshow(X1)
