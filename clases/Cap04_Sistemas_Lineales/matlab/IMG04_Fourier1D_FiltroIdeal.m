% Ejemplo de filtrado ideal de suma de senos
% D.Mery, Sept. 2008-2010
% PUC-DCC, http//dmery.ing.puc.cl



close all
N = 1000;
N2 = N/2;
T = 20; % [sec]
t = (0:N-1)'/N*T;
dt = T/N;

a = [1 0.3 0.5 0.2 0.6 0.8]'; % amplitudes
w = [2  3   4   5   8  10]'; % frecuencias
figure(3)
n = length(a);
for i=1:n
    subplot(n,1,i)
    y = a(i)*sin(2*pi*w(i)*t);
    plot(t,y);axis([1 max(t) -1 1])
end
xlabel('Armonicos')
f = zeros(N,1);
for i=1:length(a)
    f = f + a(i)*sin(2*pi*w(i)*t);
    axis([0 max(t) -max(a) max(a)])
end

figure(1)
clf
plot(t,f)
xlabel('t')
title('f(t)')
F = fft(f);
figure(2)
Fm = abs(F);
Fm = Fm/N;

dw = 1/T;
w = (0:N-1)'*dw;
plot(w(1:N2),Fm(1:N2))
xlabel('w')
title('F(w)')

% muestreo
while(1)
    wk = input('ancho?');
    k  = fix(wk/dw+1);
    figure(2)
    clf
    plot(w(1:N2),Fm(1:N2))
    xlabel('w')
    title('F(w)')

    W = zeros(N,1);
    W(1:k) = 1;
    W(N-k+2:N) = 1;
    hold on
    plot(w(1:N2),W(1:N2),'r','Linewidth',2)
    axis([0 w(N2) 0 1.2])
    F2 = W.*F;
    f2 = ifft(F2);
    figure(3)
    clf
    plot(t,f)
    hold on
    plot(t,real(f2),'r')
    axis([0 T/10 -1.5 1.5])
end