% Example:
%
% In this example we change the color of red flower into a yellow one.
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl
clt
warning off
Iin = imread('flowers.jpg');

figure(1);
imshow(Iin)
title('before')
enterpause
Rin = Iin(:,:,1);
Gin = Iin(:,:,2);
Bin = Iin(:,:,3);

J = and(Gin<8,Bin<8); % the red region has low green
K = bwareaopen(J,200);
S = imdilate(K,ones(9,9));
figure(2)
imshow(S)
title('segmentation')
enterpause

[ii,jj] = find(S==1);

n = length(ii);

Rout = Rin;
Gout = Gin;
Bout = Bin;


for k=1:n
    i = ii(k);
    j = jj(k);
    
    Gout(i,j) = Rin(i,j);
    Bout(i,j) = 0;
end
    
Iout = Iin;
Iout(:,:,1) = Rout;
Iout(:,:,2) = Gout;
Iout(:,:,3) = Bout;

figure(3)
imshow(Iout)

    



