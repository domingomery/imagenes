F = double(rgb2gray(imread('saturn.png')));
F = imresize(F,0.25);
h = fspecial('gaussian',35,4);

%h = ones(17,17)/17/17;
G = conv2(F,h);
[n,m] = size(G);
sigma = 2;
G = G + randn(n,m)*sigma;
figure(1)
imshow(F,gray(256))
%figure(2)
%mesh(h)
figure(3)
imshow(G,gray(256))

[A,B] = size(F);
[C,D] = size(h);
M = A + C - 1;
N = B + D - 1;

He = zeros(M,N);
He(1:C,1:D) = h;
FG = fft2(G);
FH = fft2(He);
AFH = abs(FH);
AFH2 = AFH.*AFH;

K = 0.01;


FFs = conj(FH)./(AFH2 + K).*FG;

Fs = abs(ifft2(FFs));
figure(4)
imshow(Fs,[])


