close all
I = imread('coffeecup.jpg');
J = rgb2gray(I);
J = imresize(J,3);
imshow(J)
mesh(double(imfilter(J,fspecial('gaussian',17,2))'))
axis([1 1278 1 1920 0 256])
setw
colorbar
ax = axis;
for i=[1:90 89:-1:66];
    view(112,i);
    axis(ax);
    pause(0.1)
    drawnow;
end
for i=[112:180 179:-1:112];
    view(i,66);
    axis(ax);
    pause(0.1)
    drawnow
end
%figure(2)
%imshow(J)

