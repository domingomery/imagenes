% Example:
%
% Segmentations using Otsu algorithm
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

i = input('Image: 1 Tortilla, 2 rice, 3 rice-H, 4 cameraman? ');
switch i
    case 0 
        J = imread('arroz_noise.png');
        J = J(110:240,70:280);
    case 1
        I = imread('tortilla.jpg');
        I = imresize(I,0.25);
        J = rgb2gray(I);
    case 2
        J = imread('rice.png');
    case 3
        J = double(imread('rice.png'));
        [N,M] = size(J);
        for i=1:N
            J(i,:) = J(i,:)-min(J(i,:))*ones(1,M);
        end
        J = uint8(J/max2(J)*255);
    case 4
        J = imread('cameraman.tif');
end
Id = double(J);
[N,M] = size(J);
figure(1)
imshow(J)
figure(3)
clf
figure(2)
clf
imhist(J)
hold on
t = input('Threshold = ?');
figure(3)
imshow(J>t)
enterpause
s = zeros(256,1);
I0 = s;
I1 = s;
nm = 0.99*N*M;
ss0 = -1;
for t=2:255
    K = J>t;
    i0 = find(K==0);
    i1 = find(K==1);
    I0(t) = length(i0);
    I1(t) = length(i1);
    
    if and(length(i0)<nm,length(i1)<nm) % regions should be large enough
        m0 = mean(Id(i0));
        s0 =  std(Id(i0));
        m1 = mean(Id(i1));
        s1 =  std(Id(i1));
        s(t) = 0.5*(m1-m0)^2/(s1^2+s0^2);
        figure(2)
        ss1 = s(t)*N*M/1000;
        if ss0==-1
            ss0=ss1;
        end
%        plot(t,s(t)*N*M/1000,'r.')
        plot([t-1 t],[ss0 ss1],'r')
        ss0 = ss1;
        figure(3)
        imshow(K)
        drawnow
        pause(0)
    end
end
[i,j] = max(s);
fprintf('Best threshold = %d\n',j)
figure(3)
imshow(J>j);title('Segmentation with best threshold');
figure(2)
ax=axis;
plot([j j],ax(3:4),'g:')