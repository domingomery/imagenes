I = imread('louvre.png');
I = imresize(I,[300 300]);
close all
[N,M] = size(I);
figure
imshow(I)
title('original')
pause
figure
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
pause
figure
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
