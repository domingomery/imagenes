I = imread('coffeecup.jpg');
J = rgb2gray(I);
imshow(J)
mesh(double(imfilter(J,fspecial('gaussian',17,2))'))
colorbar
ax = axis;
for i=[1:90 89:-1:66];
    view(112,i);
    axis(ax);
    drawnow;
end
for i=[112:180 179:-1:112];
    view(i,66);
    axis(ax);
    drawnow
end
figure(2)
imshow(J)

