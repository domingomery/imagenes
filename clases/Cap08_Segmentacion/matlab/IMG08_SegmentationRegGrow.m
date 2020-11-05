% Example:
%
% Segmentation using Region Growing
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

close all
k = input('1: cameraman, 2: jirafa: ');
if k==1
    I = double(imread('cameraman.tif'));
else
    I = double(imread('jirafa.png'));
end
Io = I;
figure(1)
clf
imshow(uint8(I));
hold on
R = zeros(size(I));
if k==1
    i = input('Seed: 1 coat, 2 background, 3 pant ?');
    switch i
        case 1 % coat
            i0 = 148;  j0 = 66; th = 20;
        case 2 % background
            i0 =  20;  j0 = 20; th = 40;
        case 3 % pant
            i0 =  231; j0 = 49; th = 30;
    end
else
    %i0 =  370; j0 = 220; th = 60;
    i0 =  310; j0 = 100; th = 100;
    se = strel('disk',3);
    I = medfilt2(I,[7 7]);
end
plot(j0,i0,'r*')
plot(j0,i0,'ro')
g = I(i0,j0);
R(i0,j0) = 1;
n = 1;

X = ones(3,3);
X = [0 1 0;1 1 1;0 1 0];
figure(2)
while (n>0)
    T = imdilate(R,X);
    G = and(T,not(R));
    ii = find(G==1);
    n = length(ii);
    m = 0;
    if (n>0)
        for i=1:n
            if abs(I(ii(i))-g)<th
                R(ii(i))=1;
                m = m+1;
            end
        end
    end
    n = m;
    J = I;
    jj = find(R==0);
    J(jj)=255;
    imshow(uint8(J))
    setw
    drawnow
    pause(0)
end
figure(3)
imshow(R)
figure(4)
imshow(G)
figure(5)
Bio_edgeview(Io,G,[1 0 0],2)

