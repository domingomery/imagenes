% Ejemplo Convolucion 1D en el dominio del espacio y frecuencia
%
% D.Mery, PUC-DCC, Septiembre 2017
% http://dmery.ing.puc.cl
close all

N1 = 1000;
N2 = 17;

f1 = 2*sin((1:N1)'/N1*2*pi*10)+rand(N1,1)-0.5;
f2 = ones(N2,1)/N2;
figure(1)
plot(f1)
title('sinus+noise')
g = conv(f1,f2);

f1p = [f1; zeros(N2-1,1)];
f2p = [f2; zeros(N1-1,1)];
F1 = fft(f1p);
F2 = fft(f2p);

G = F1.*F2;

gs = real(ifft(G));

figure(2)
clf
plot(g,'r')
hold on
enterpause
plot(gs,'b')
plot(g-gs,'m')
legend({'g','gs','g-gs'})
title('filtered signal')





