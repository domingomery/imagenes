% Color Segmentation using
% Mery, D.; Pedreschi, F. (2005): Segmentation of Colour Food Images using 
% a Robust Algorithm. Journal of Food Engineering, 66(3):353-360.
% PDF > http://web.ing.puc.cl/~dmery/Prints/ISI-Journals/2005-JFoodEng-Segmentation.pdf

close all
I = imread('testimg1.jpg');
[R,E,J] = Bim_segbalu(I,0);
figure(1);imshow(I);figure(2);imshow(J,[]);figure(3);imshow(R);figure(4);
Bio_edgeview(I,E,[0 1 0])
enterpause

I = imread('flamingo.jpg');
[R,E,J] = Bim_segbalu(I,0);
figure(1);imshow(I);figure(2);imshow(J,[]);figure(3);imshow(R);figure(4);
Bio_edgeview(I,E,[0 1 0])
enterpause

I = imread('butterfly.jpg');
[R,E,J] = Bim_segbalu(I);
figure(1);imshow(I);figure(2);imshow(J,[]);figure(3);imshow(R);figure(4);
Bio_edgeview(I,E,[1 0 0])
enterpause

I = imread('airplane.jpg');
[R,E,J] = Bim_segbalu(I,-0.1);
figure(1);imshow(I);figure(2);imshow(J,[]);figure(3);imshow(R);figure(4);
Bio_edgeview(I,E,[0 1 0])
