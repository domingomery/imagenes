% Ejemplo de Estimacion de los parametros de una Campana de Gauss
% D.Mery, PUC-DCC, http://dmery.ing.puc.cl
% Septiembre, 2009
x = (0:0.1:20)';
n = length(x);
r = 0.05*randn(n,1); % ruido gaussiano
mu = 10;
sigma = 3;
y = exp(-(x-mu).*(x-mu)/2/sigma/sigma) + r; % Campana de Gauss + ruido

figure(1)
clf
plot(x,y,'r+')
% valores inciales de los parametros
mu0    = 15;
sigma0 = 5;
th0    = [mu0 sigma0]';
 
% minimizacion de funcion objetivo (ver fgausserror.m)
th = fminsearch('IMG06_fgausserror',th0,[],x,y);

% evaluacion del error con parametro th estimado
[err,ys] = IMG06_fgausserror(th,x,y);
mus = th(1);
sigmas = th(2);
fprintf('   Parametros Reales: mu=%7.4f sigma=%7.4f\n',mu,sigma) 
fprintf('Parametros Estimados: mu=%7.4f sigma=%7.4f\n',mus,sigmas) 
fprintf('      Error Promedio: e=%7.4f\n',err)
%hold on
%plot(x,ys)

