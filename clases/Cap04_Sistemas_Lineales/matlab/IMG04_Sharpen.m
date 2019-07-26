% Tomado de la figura 3.46 del libro de Gonzalez 3rd Edition.
% D.Mery, PUC-DCC, Sep-2008
% http://dmery.ing.puc.cl

I = imread('../images/skeleton.tif');
close all

% a)
Ia = double(I);
figure
imshow(Ia,[])
title('(a) Image of whole body bone scan');
pause

% b)
L = [0 -1 0; -1 4 -1; 0 -1 0];
Ib = abs(conv2(Ia,L,'same'));
figure
imshow(Ib,[])
title('(b) Laplacian of (a)');
pause

% c)
Ic = Ia+Ib;
figure
imshow(Ic,[])
title('(c) Sharpened image obtained by adding (a) and (b)');
pause

% d)
S1 = [-1 -2 -1; 0 0 0; 1 2 1];
S2 = S1';
I1 = abs(conv2(Ia,S1,'same'));
I2 = abs(conv2(Ia,S2,'same'));
Id = I1+I2;
figure
imshow(Id,[])
title('(d) Sobel of (a)');
pause

% e)
A = ones(5,5)/25;
Ie = abs(conv2(Id,A,'same'));
figure
imshow(Ie,[])
title('(e) Sobel image averaged with 5x5 mask');
pause


% f)
If = Ic.*Ie;
figure
imshow(If,[])
title('(f) Product of (c) and (e)');
pause

% g)
Ig = Ia+If;
figure
imshow(Ig,[])
title('(g) Sum of (a) and (f)');
pause
Ign = Ig/max(Ig(:));


% h)
Ih = imadjust(Ign,[0 0.4],[0 1],0.5);
figure
imshow(Ih,[])
title('(h) imadjust of (g)');

