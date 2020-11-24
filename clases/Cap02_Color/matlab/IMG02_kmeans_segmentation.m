% Este ejemplo necesita el Toolbox Balu
% http://dmery.ing.puc.cl/index.php/balu/

close all
I = imread('testimg9.jpg');
%I = imread('flores.png');
%I = imread('pistilos.png');
%I = imread('flowers.jpg');
%I = imread('amarilla.png');
imshow(I)
enterpause

d = 10;
d = fix(sqrt(size(I,1)*size(I,2))/100);

R = I(1:d:end,1:d:end,1);
G = I(1:d:end,1:d:end,2);
B = I(1:d:end,1:d:end,3);

x = R(:);
y = G(:);
z = B(:);

X = [x y z];

figure(1)
plot3(x,y,z,'r.')
xlabel('R')
ylabel('G')
zlabel('B')
enterpause

figure

K = input('number of clusters? (eg. 3): ');

[ds,C] = Bct_kmeans(X,K,1);
enterpause

Bim_segkmeans(I,K,1,1);