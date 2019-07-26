% Example:
%
% Aritmetic: Noise reduction using average
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl



close all
i = input('1 simulated images, 2 real images? ');
j = input('1 casting, 2 natural? ');
if i==1
    if j==2
    % flower
    X = double(rgb2gray(imread('lotoflower.jpg')));
    else
    %casting
    f = double(Xloadimg('C',64,23));
    X = f(90:455,100:500);
    X = imresize(X,[512 512]);
    X = 255*imadjust(X/255,[40 255]/255,[0 255]/255,1.1);
    end
    
    figure(1)
    imshow(X,[])
    title('original');
    
    
    n = input('# images to be simulated = ?');
    
    sig = input('sigma = ?');
    
    [N,M] = size(X);
    
    S = zeros(N,M);
    
    for i=1:n
        Xr = X + sig*randn(N,M);
        S = S + Xr;
        
        Xr(Xr<0) = 0;
        Xr(Xr>255) = 255;
        
        imshow(uint8(round(Xr)));
        title(['Image ' num2str(i)])
        pause(0.1)
        % imwrite(uint8(round(S/i)),['ss_' num2fixstr(i,2) '.png'],'png');
        
    end
    figure(1);imshow(X/256,[]);title('original')
else
    if j==2
    S = double(imread('im01.png'));
    n = 20;
    for i=2:n
        si = ['im' num2fixstr(i,2) '.png'];
        Xr = double(imread(si));
        imshow(Xr,[]);
        title(['image ' num2str(i)])
        pause(0.5);
        S = S + Xr;
    end
    else
    S = double(Xloadimg('C',41,1));
    S = S(345:555,200:499);
    n = 37;
    i = 1;
    imwrite(uint8(round(S/i)),['ss_' num2fixstr(i,2) '.png'],'png');
    for i=2:n
        Xr = double(Xloadimg('C',41,i));
        Xr = Xr(345:555,200:499);
        imshow(Xr,[]);
        title(['image ' num2str(i)])
        pause(0.1);
        S = S + Xr;
        imwrite(uint8(round(S/i)),['ss_' num2fixstr(i,2) '.png'],'png');
    end
    end
end
S = S/n;
figure(2);imshow(Xr/256,[]);title('image with noise')
figure(3);imshow(S/256,[]);title('filtered image')

figure(4)
if i==1
    plot([X(10,:)' Xr(100,:)' S(100,:)'])
else
    plot([Xr(140,:)' S(140,:)'])
end