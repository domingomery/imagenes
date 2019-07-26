close all
F = rgb2gray(imread('puerta.png'));
figure(1)
imshow(F,[])
axis on
while(1)
    n = input('n? ');
    h = ones(1,n)/n;
    G = conv2(double(F),h,'valid');
    figure(2)
    imshow(G,[])
    FG0 = fft2(G);
    FG1 = abs(fftshift(FG0));
    FG = log(FG1+1);
    figure(3)
    imshow(FG,[])
    y = sum(FG);
    figure(4)
    plot(y)
    figure(5)
    y0 = y-mean(y);
    q = abs(fft(y0));
    q(1:2)=0;
    plot(q)
    zoom on
end