% Example:
%
% Visualization of color images using a color palette. 
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

% We want to generate an image with the following 4 squares of 100x100
% pixels:
%
%
% +---------+---------+
% |         |         |
% |  Red    |  Green  |
% |         |         |
% +---------+---------+
% |         |         |
% |  Blue   |  Gray   |
% |         |         |
% +---------+---------+
%
close all
echo on

% Solution 1: we use a 3D matrix with RGB channels:
figure(1)
J = zeros(200,200,3,'uint8');
J(1:100,1:100,1)     = 255;
J(1:100,101:200,2)   = 255;
J(101:200,1:100,3)   = 255;
J(101:200,101:200,:) = 128;
imshow(J) % J has 3 dimensions
enterpause

% Solution 2: we use a color palette (variable 'map')
figure(2)
A = ones(100,100);
B = 2*A;
C = 3*A;
D = 4*A;
I = [A B;C D];
map = [1 0 0; 0 1 0; 0 0 1; 0.5 0.5 0.5];
imshow(I,map) % I has 2 dimensions
echo off

% Tip: If you want to convert 2D I with map into a 3D color image (without
% map) you can use the command K = ind2rgb(I,map). 
% In this example the K is equal to J.

