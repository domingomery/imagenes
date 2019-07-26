% Example:
%
% Edge detection using a simple mask
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

i = input('Image: 1 rice, 2 zebra, 3 chicago, 4 dock ?');
switch i
    case 1
        I = double(imread('rice.png'));
        th = 40;
    case 2
        I = double(imread('zebra.bmp'));
        I = medfilt2(I,[5 5]);
        th = 30;
    case 3
        I = double(imread('chicago.png'));
        th = 50;
    case 4
        I = double(rgb2gray(imread('dock.jpg')));
        th = 70;
        
end
Gv = imfilter(I,[-1 0 1]);
Gh = imfilter(I,[-1 0 1]');
G = sqrt(Gv.*Gv+Gh.*Gh);
E = G>th;
close all
figure(6);Bio_edgeview(I,E);title('binary edges')
figure(5);imshow(E);title('binary edges')
figure(4);imshow((G+1),[]);title('horizontal & vertical edges')
figure(3);imshow((abs(Gh)+1),[]);title('horizontal edges')
figure(2);imshow((abs(Gv)+1),[]);title('vertical edges')
figure(1);imshow(I,[]);title('original image')


