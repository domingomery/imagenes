% Example:
%
% Visual perception of gray regions I
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


I = imread('chess.png');
figure(1)
imshow(I)
title('The gray-values of A and B are equal!');
A = I(195:235,335:385,:);
figure(2)
imshow(A)
axis on
title('Square A')
figure(3)
B = I(300:345,325:375,:);
imshow(B)
axis on
title('Square de B')
figure(4)
ax = [1 50 100 120];k=5;
subplot(2,3,1);plot(A(k,:,1));axis(ax);title('Red A')
subplot(2,3,2);plot(A(k,:,2));axis(ax);title('Green A')
subplot(2,3,3);plot(A(k,:,3));axis(ax);title('Blue A')
subplot(2,3,4);plot(B(k,:,1));axis(ax);title('Red B')
subplot(2,3,5);plot(B(k,:,2));axis(ax);title('Green B')
subplot(2,3,6);plot(B(k,:,3));axis(ax);title('Blue B')
AB = [A;B];
figure(5)
imshow(AB)
figure(1)
enterpause

imtool(I)