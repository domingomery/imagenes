% Funcion objetivo del programa EjemploEstimacionNoLineal.m
% Calcula el error promedio entre la Campana de Gauss medida
% almacenada en 'y', y la Campana de Gauss estimada en ys.
% D.Mery, PUC-DCC, http://dmery.ing.puc.cl
% Septiembre, 2009
function [err,ys] = IMG06_fgausserror(th,x,y)
% load xy
mus = th(1);
sigmas = th(2);
ys = exp(-(x-mus).*(x-mus)/2/sigmas/sigmas); % campana de gauss
err = mean(abs(y-ys));
clf
plot(x,y,'r+')
hold on
plot(x,ys,'LineWidth',3)
axis([0 20 -0.5 1.5]);
drawnow
fprintf('      Error Promedio: e=%7.4f\n',err)
