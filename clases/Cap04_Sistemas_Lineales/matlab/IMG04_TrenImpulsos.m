% Serie de Fourier usando
% f(t) = sum cn*exp(j*2*pi*n/T*t) (desde -Inf hasta +Inf)
%
% Ejemplo para un tren de impulsos periodo DT
%
% Comparar con implementacion en EjemploSerieFourier.m
%
% D.Mery, PUC-DCC, Oct. 2011
%
close all
K  = 20;
N  = 8;
t  = 0:0.05:K;
DT = 2;
j  = sqrt(-1);
% para n = 0;
f = DT*ones(size(t));
for n=1:500;
    f = f + 2/DT*(cos(2*pi*n/DT*t));
    figure(1)
    % plot(t,f/n); %entre 0 y 1
    % axis([0 20 -0.5 1.5])
    plot(t,f); % los impulsos tienden al infinito, como debe ser!
    title(num2str(n))
    pause(0.1);
end
