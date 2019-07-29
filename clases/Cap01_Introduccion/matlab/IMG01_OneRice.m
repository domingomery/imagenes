% Example:
%
% Simple example of a small image
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


clear all
close all

I = imread('onerice.bmp');
figure(1)
imshow(I)
axis on
hold on
[N,M] = size(I);


i = input('row/column? ');
plot([1 M],[i i],'r');
plot([i i],[1 N],'b');

figure(2)
plot(I(i,:),'r');
axis([0 M 0 255])
title(['row ' num2str(i)])

figure(3)
plot(I(:,i),'b');
axis([0 N 0 255])
title(['column ' num2str(i)])

enterpause



for i=1:N
    
    figure(1)
    hold off
    imshow(I)
    axis on
    hold on
    plot([1 M],[i i],'r');
    plot([i i],[1 N],'b');
    
    figure(2)
    plot(I(i,:),'r');
    axis([0 M 0 255])
    title(['row ' num2str(i)])
    
    figure(3)
    plot(I(:,i),'b');
    axis([0 N 0 255])
    title(['column ' num2str(i)])
    pause(0.5)
end

figure(3)
mesh(double(I))

figure(4)
R = I>140;
imshow(R)


