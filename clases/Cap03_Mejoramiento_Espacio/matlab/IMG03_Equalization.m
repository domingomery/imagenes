% Example:
%
% Histogram equalization and contrast enhancement 
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

close all
clear all

X = imread('pout.tif');
figure;imshow(X),title('X: Original');
figure;imhist(X),title('Histogram of X');
enterpause

Y0 = imadjust(X);
figure;imshow(Y0,[]),title('Y0: Equalized from X using IPT (imadjust)');
figure;imhist(Y0),title('Histogram of Y0');
enterpause


Y1 = Bim_equalization(X);
figure;imshow(Y1,[]),title('Y1: Equalized from X using Balu');
figure;imhist(Y1),title('Histogram of Y1');
enterpause

Y2 = histeq(X);
figure;imshow(Y2,[]),title('Y2: Equalized from X using IPT (imhist)');
figure;imhist(Y2),title('Histogram of Y2');
enterpause

Y3 = adapthisteq(X,'clipLimit',0.01,'Distribution','rayleigh');
figure;imshow(Y3,[]),title('Y3: Equalized from X using IPT (adapthisteq)');
figure;imhist(Y3),title('Histogram of Y3');
enterpause

Y4 = adapthisteq(X,'clipLimit',0.003);
figure;imshow(Y4,[]),title('Y4: Equalized from X using IPT (adapthisteq)');
figure;imhist(Y4),title('Histogram of Y4');

disp(' adapthisteq: Contrast-limited Adaptive Histogram Equalization (CLAHE).')
disp('    adapthisteq enhances the contrast of images by transforming the')
disp('    values in the intensity image I.  Unlike HISTEQ, it operates on small')
disp('    data regions (tiles), rather than the entire image. Each tile- ')
disp('    contrast is enhanced, so that the histogram of the output region')
disp('    approximately matches the specified histogram. The neighboring tiles ')
disp('    are then combined using bilinear interpolation in order to eliminate')
disp('    artificially induced boundaries.  The contrast, especially')
disp('    in homogeneous areas, can be limited in order to avoid amplifying the')
disp('    noise which might be present in the image.')