I = zeros(32,32);
I(16,10:24) = 1;
I(16,16) = 0;
J = bwmorph(I,'bridge');
figure(1);clf;imshow(I);title('original')
figure(2);clf;imshow(J);
title('after bridge')
pause

I = zeros(32,32);
I(10:16,10:16) = 1;
I(20,10) = 1;
I(25,25) = 1;
J = bwmorph(I,'clean');
figure(1);clf;imshow(I);title('original')
figure(2);clf;imshow(J);
title('after clean')
pause


I = zeros(32,32);
I(5:15,5:15) = 1;
I(6:14,6:14) = 0;
I(20:28,20:28) = 1;
I(21,26) = 0;
I(26,21) = 0;
J = bwmorph(I,'fill');
figure(1);clf;imshow(I);title('original')
figure(2);clf;imshow(J);
title('after fill')
pause

I = zeros(32,32);
I(5:15,5:15) = 1;
I(6:14,6:14) = 0;
I(20:28,20:28) = 1;
I(21,26) = 0;
I(26,21) = 0;
J = imfill(I,'holes');
figure(1);clf;imshow(I);title('original')
figure(2);clf;imshow(J);
title('after imfill-holes')
pause

BW1 = imread('circles.png');
figure(1)
imshow(BW1)
title('original')
BW2 = bwmorph(BW1,'remove');
BW3 = bwmorph(BW1,'skel',Inf);
figure(2)
imshow(BW2)
title('after remove')
figure(3)
imshow(BW3)
title('after skel')
