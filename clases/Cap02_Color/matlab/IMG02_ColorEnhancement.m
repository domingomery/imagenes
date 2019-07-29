% Example:
%
% Color enhancement using equalization of channel in HSI space
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

I = imread('valeria.png');

rh = imhist(I(:,:,1));
gh = imhist(I(:,:,2));
bh = imhist(I(:,:,3));
ii = 0:255;
figure(1)
imshow(I)
title('original')

figure(2)
plot(ii,rh,'r',ii,gh,'g',ii,bh,'b')
title('RGB histograms')
z = zeros(256,1);
r_map = [(1:256)' z z]/256;
g_map = [z (1:256)' z]/256;
b_map = [z z (1:256)']/256;

R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

Req = histeq(R);
Geq = histeq(G);
Beq = histeq(B);


figure(3)
imshow([R Req],r_map);title('red (original and equalized)');
figure(4)
imshow([G Geq],g_map);title('green (original and equalized)');
figure(5)
imshow([B Beq],b_map);title('blue (original and equalized)');

Ieq = I;
Ieq(:,:,1) = Req;
Ieq(:,:,2) = Geq;
Ieq(:,:,3) = Beq;

figure(6);
imshow(Ieq)
title('new image after equalizing each RGB channel')
enterpause

H = rgb2hsv(I);

In = H(:,:,3); % intensity channel of I;

Ineq = histeq(In);

H(:,:,3) = Ineq;


Ieq = hsv2rgb(H);

figure(7)
imshow(uint8([In Ineq]*256),[]);title('gray');

figure(8)
imshow(Ieq)

