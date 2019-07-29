% Example:
%
% Visualization of Pixels and Grayvalues
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


clear all
close all
i = input('Test image: 1> Mandrill, 2> Chicago: ');
if i == 1
   X = imread('mandrill_bw.bmp');
else
   X = imread('chicago.png');
end
X = double(X(1:2:end,1:2:end));
X0 = round(X/max(X(:))*9.49)+1;

x = (0:9)/9*255;
map = [x' x' x']/255;


y = (1:10)'*ones(1,2500);y = y';y = y(:);k=250;z = zeros(length(y)/k,k);z(:) = y;
figure(1)
imshow(z/10)
title('palette')
hold on
for i=1:10
    text(25*(i-1)+10,50,num2str(i))
end

Z0 = 10*ones(size(X0));

i1 = 160;
j1 = 55;
for d=[0:10 12:2:20 23:5:50]
    figure(4)
    hold off
    imshow(X0,map)
    title('image')
    hold on
    plot([j1-d j1-d j1+d+1 j1+d+1 j1-d],[i1-d i1+d+1 i1+d+1 i1-d i1-d],'r')
    I=round(X0(i1-d:i1+d,j1-d:j1+d));
    figure(2)
    imshow(X0,map);
    title('red region')
    axis([j1-d-0.5 j1+d+0.5 i1-d-0.5 i1+d+0.5]);
    axis on
    figure(3)
    hold off
    imshow(Z0,map)
    title('gray values')
    hold on
    for i=i1-d:i1+d
        for j=j1-d:j1+d
            text(j,i,num2str(X0(i,j)))
        end
    end
    axis([j1-d-0.5 j1+d+0.5 i1-d-0.5 i1+d+0.5]);
    for i=i1-d:i1+d; 
       plot([j1-d-0.5 j1+d+0.5],[i+0.5 i+0.5]) 
    end
    for j=j1-d:j1+d
       plot([j+0.5 j+0.5],[i1-d-0.5 i1+d+0.5]) 
    end
    
    if d<20
        enterpause
    end
end