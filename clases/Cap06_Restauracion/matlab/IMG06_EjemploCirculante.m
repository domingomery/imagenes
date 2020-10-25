close all
I = imread('rice.png');
M = 64;
i1 = 156;
j1 = 127;
F = double(I(i1:i1+M-1,j1:j1+M-1));

[N1,M1] = size(F);
n = 7;
N = N1+n-1;
Fp = zeros(N,N);
Fp(1:N1,1:N1) = F;
figure(1)
imshow(F,[])
h = ones(n,n)/n^2;
Hp = zeros(N,N);
Hp(1:n,1:n) = h;
G = conv2(F,h,'same');
figure(2)
imshow(G,[])
f = Fp(:); % f es un vector con las columnas de F concatenadas (hacia abajo)

HC = [];
for i=1:N
    HF = [];
    for j=1:N
        k = mod(i-j,N);
        Hk = zeros(N,N);
        for p=1:N
            for q=1:N
                t = mod(p-q,N);
                Hk(p,q) = Hp(k+1,t+1);
            end
        end
        HF = [HF Hk];
    end
    HC = [HC;HF];
end        

g = HC*f;
Gs = zeros(size(Fp));
Gs(:) = g;
figure(3)
q = (n+1)/2;
Gs = Gs(q:q+M-1,q:q+M-1);
imshow(Gs,[])
