% Example:
%
% 2D Sampling and grayscale quantization
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


close all
i = input('Test image: 1> Mandrill, 2> Chicago, 3> Drops, 4> Apple, 5> Pattern: ');
switch i
    case 1
        [X,map] = imread('mandrill_bw.bmp');
    case 2
        [X,map] = imread('chicago.png');
    case 3
        [X,map] = imread('drops.png');
    case 4
        [X,map] = imread('apple_bw.png');
        X =rgb2gray(X);
    case 5
        X = ones(256,1)*(1:256)-1;
end

X = double(X);

X = X/max(X(:))*255;

X = round(imresize(X,[512 512]));

figure(1)
imshow(X,gray(256))
axis on
title ('original image')

[N,M] = size(X);
fprintf('Image size: %d x %d\n',N,M);

ok = 1;
while(ok)
    m = input('# bits for grayscale quantization (0 => end)? ');
    
    if (m<9)&&(m>0)
        n = 2^(8-m)-1;
        
        Y = uint8(n*fix(X/n));
        
        figure(2)
        % imshow(Y,[min(Y(:)) max(Y(:))])
        imshow(Y,[])
        title(sprintf('2^%d = %d grayvalues',m,2^m))
        figure(3)
        imhist(Y)
    else
        if (m==0)
            ok = 0;
        else
            beep
            disp('please enter 1,2,...,8')
        end
    end
end

[N,M] = size(X);
fprintf('Image size NxN with N= %d\n',N);

ok = 1;
while(ok)
    Nn = input('Enter new size (0 => end) N = ? ');
    if (Nn)
        Y = imresize(X,[Nn Nn]);
        figure(2)
        imshow(Y,gray(256))
        title(sprintf('Image size = %d x %d pixels',Nn,Nn))
        axis on
    else
        ok = 0;
    end
end