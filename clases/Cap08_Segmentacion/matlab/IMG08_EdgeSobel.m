% Example:
%
% Edge detection using Sobel
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


i = input('Image> 1: rice, 2: cameraman, 3: saturn, 4: fawn ?');

switch i
    case 1
        
        I  = imread('rice.png'); 
        th = 200;
    case 2
        
        I  = imread('cameraman.tif'); 
        th = 200
    case 3
        I  = rgb2gray(imread('saturn.png'));
        I  = imresize(I,0.2);
        th = 50;
    case 4
        I  = rgb2gray(imread('../images/fawn.jpg'));
        I  = imresize(I,0.1);
        th = 300;
end
figure(1)
imshow(I,[])
title('imagen original');
I = double(I);
S1 = [-1 -2 -1; 0 0 0; 1 2 1];
S2 = S1';
J = abs(conv2(I,S1,'same'))+abs(conv2(I,S2,'same'));
figure(2)
imshow(J,[])
title('Sobel')
figure(3)
E = J>th;
imshow(E)
title('Edges: Sobel > th')
figure(4)
Bio_edgeview(I,E)
title('Edges: Sobel > th')

