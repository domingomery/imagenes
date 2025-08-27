I = imread('louvre.png');
I = imresize(I,[300 300]);
Io = I;
close all
[N,M] = size(I);
figure
setw
imshow(I)
title('original')
axis on
pause
figure
setw
k = 10;
t = 0;
while(t<M)
    %I(2:2:N,k+1:M) = I(2:2:N,1:M-k);I(2:2:N,1:k) = 256;
    I(2:2:N,1:t+k) = 256;
    imshow(I)
    pause(0);
    t = t+k;
end
title('subsampled rows')
axis on
pause
figure
setw
t = 0;
while(t<N)
    %I(k+1:N,2:2:M) = I(1:N-k,2:2:M);I(1:k,2:2:M) = 256;
    I(1:t+k,2:2:M) = 256;
    imshow(I)
    pause(0);
    t = t+k;
end
title('subsampled rows and columns')
pause
figure
I(2:2:N,:) = [];
imshow(I)
title('removed rows')
pause
figure
I(:,2:2:M) = [];
imshow(I)
title('removed columns and rows')
axis on

pause
close all
imshow(Io)
axis on
pause
figure

J = 255*ones(2*N,2*M);
for i=1:N
    imshow(uint8(J));title('imagen de tamaño doble')
    pause(0)
    for j=1:M
        J(2*i,2*j) = I(i,j);
    end
end
pause
for i=1:N
    imshow(uint8(J));title('relleno')
    pause(0)
    for j=1:M
        J(2*i,2*j+1) = I(i,j);
        J(2*i+1,2*j) = I(i,j);
        J(2*i+1,2*j+1) = I(i,j);
    end
end



