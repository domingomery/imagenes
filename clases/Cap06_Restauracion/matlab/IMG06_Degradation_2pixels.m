M = 100;
t = (1:M)'/M*2*pi;
f = 10+sin(t);
figure(1);clf
plot(f,'linewidth',2)
title('fila original (f)');
n = 2;
h = ones(1,n)/n;
N = M-n+1;
H = zeros(N,M);
for i = 1:N
    H(i,i:i+n-1)=h;
end
g = H*f;
figure(2);
plot(g,'r','linewidth',2);
title('fila degradada (g)');

H1 = H(1:N,1:N);
ff = 0;
while(1)
    fM = input('ingrese un valor para f(100) = ?');
    b = g;
    b(N) = b(N)-0.5*fM;
    f1=inv(H1)*b;
    fs=[f1 ;fM];
    figure(3)
    plot([f fs],'linewidth',2)
    % title('fila original y reconstruida');
    title(['x = ' num2str(fM)])
    setw
    norm(fs)-ff
end