% Serie de Fourier usando
% f(t) = sum cn*exp(j*2*pi*n/T*t) (desde -Inf hasta +Inf)
%
% Ejemplo para T = 8 y f(t) = 8 entre -0.5 y 0.5
%
% Comparar con implementacion en IMG04_SerieFourier.m
%
% D.Mery, PUC-DCC, Sep. 2010
%
close all
K = 20;
M = 16;
t=0:0.05:K;
f=ones(size(t));
ft = Bio_statusbar('Coefficients');
N = 500;
for n=1:N;
    ft = Bio_statusbar(n/N,ft);
    %f=f+sinc(n/8)*exp(j*2*pi*n/8*t)+sinc(-n/8)*exp(-j*2*pi*n/8*t);
    f = f + 2*sinc(n/8)*(cos(2*pi*n/8*t));
    figure(1)
    % disp(n)
    plot(t,f);
    if n<=M
        figure(2)
        subplot(M,1,n)
        plot(t,2*sinc(n/8)*(cos(2*pi*n/8*t)))
        axis([0 K -2 2])
    end
    if n==1
        enterpause
    else
        pause(0.1);
    end
end
delete(ft)
