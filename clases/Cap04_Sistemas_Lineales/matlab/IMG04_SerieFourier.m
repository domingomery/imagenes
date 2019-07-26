% Ejemplo de Series de Fourier
% D.Mery, Septiembre 2008
% PUC-DCC
%
% f(t) = a0/2 + SUM(n=1,Infinity){an*cos(2*pi*n*t/T)+bn*sin(2*pi*n*t/T)}
%
% an = INT(-T/2,T/2){f(t)*cos(2*pi*n*t/T)*dt}
% bn = INT(-T/2,T/2){f(t)*sin(2*pi*n*t/T)*dt}
%
close all
r = input('diente de sierra = 1, pulso = 0 ?');
N = 200;
t = [1:N]'/N*6*pi;
figure(1)
clf
switch r
    case 0 % pulso simetrico ancho W altura A
        A  = 8;
        W = 1;
        T = 8;
        a0 = 2*A*W/T;
    case 1 % diente de sierra de 0 a T con pendiente a
        T  = 10;
        a = 0.5
        a0 = a*T;
end
s = a0/2*ones(N,1);
figure(2)
hold on
plot([0 0],[0 a0/2])
for n=1:1000
    switch r
        case 0
            % pulso x(t) = 1 para abs(t)<W/2, 0 para el resto
            an = 2*A/pi/n*sin(pi*n/T*W);
            bn = 0;
        case 1
            % rampa x(t)=10*t/T
            an = 0;
            bn = -a*T/n/pi;
    end
    s = s+an*cos(2*pi*n*t/T)+bn*sin(2*pi*n*t/T);
    figure(1)
    plot(t,s)
    axis([0 max(t) -1 10])
    figure(2)
    hold on
    plot([n n],[0 sqrt(an*an+bn*bn)])
    title(sprintf('n=%d',n))
    pause(1-n/1000)
end
