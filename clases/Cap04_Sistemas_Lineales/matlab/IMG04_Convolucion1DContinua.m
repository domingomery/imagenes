% Ejemplo Animado de Convolucion 1D Continua
%
% y(t) = integral[-Inf,Inf](g(t-\tau)x(\tau)d\tau)
%
% D.Mery, PUC-DCC, Septiembre 2009
% http://dmery.ing.puc.cl

clf
setw
N = 300;
i=1:N;
t = (i-N/2)/(N/10);
dt = t(2)-t(1);

% Definicion de x
x = zeros(N,1);
tran = input('Pulso: x(t) = 1 en t = ? (ej. [0 3]) ');
ruido = input('ruido = ?');
ii = find((t>=tran(1))&(t<tran(2)));
x(ii) = 1;
x = x+ruido*randn(N,1);


% Definicion de g
g = zeros(N,1);
gstr = input('g=? (1=pulso, 2=rampa, 3=gauss)');
ii = find((t>=-1)&(t<1));
z = (ii-min(ii))/(max(ii)-min(ii));
switch gstr
    case 1
       g(ii) = 0.5;
    case 2
        g(ii) = z;
    case 3
        g(ii) = exp(-(z-0.5).*(z-0.5)/2/0.01);
end
gtau = g(end:-1:1);

figure(1)
subplot(4,1,1);plot(t,[x g],'LineWidth',2);axis([-5 5 -0.1 1.5]);title('x(t),g(t)');xlabel('t')
for k=N/4:7*N/4
    g1 = zeros(N,1);
    if (k<=N)
        g1(1:k) = gtau(N-k+1:N);
    else
        g1(k-N+1:N) = gtau(1:2*N-k);
    end
    subplot(4,1,2);plot(t,[x g1],'LineWidth',2);axis([-5 5 -0.1 1.5]);title('x(\tau),g(t-\tau)');xlabel('\tau')
    subplot(4,1,3);bar(t,g1.*x,'m');axis([-5 5 -0.1 1.5]);title('x(\tau)g(t-\tau)');xlabel('\tau')
    yk = sum(g1.*x)*dt;
    subplot(4,1,4);plot((k-N)*dt,yk,'m.');axis([-5 5 -0.1 1.5]);hold on;title('y(t) = area de x(\tau)g(t-\tau)');xlabel('t')
    drawnow
end