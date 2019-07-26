I = imread('rice.png');
N = 32;
k = 9;
F = double(I(1+k:N+k,1+k:N+k));
figure(1);imshow(F,[]);title('original')
n = 7;
m = (n-1)/2;
% s = n/8.5;h = fspecial('gaussian',n,s);h = h/sum(h(:));
h = ones(n,n)/n^2;
G = conv2(F,h,'valid');
figure(2);imshow(G,[]);title('blurred')

th = zeros(N,N);
th(m+1:N-m,m+1:N-m) = G;

[err,ths] = fminsearch('IMG06_error_res',th(:),[],G,h,N);

Fs = zeros(N,N);
Fs(:) = ths;

figure(3);imshow(Fs,[]);title('restored')
