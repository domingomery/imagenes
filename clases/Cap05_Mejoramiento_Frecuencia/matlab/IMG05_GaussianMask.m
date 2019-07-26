% function H = IMG05_GaussianMask(N,M,Do)
%
% Construccion de mascara H en el dominio de la frecuencia para un filtro
% Gaussiano.
% 
% El tamano de la matriz H es NxM.
% La frecuencia de corte es Do.
%
% D.Mery, DCC-PUC, Octubre 2018
% http://dmery.ing.puc.cl
%
function H = IMG05_GaussianMask(N,M,Do)

H = zeros(N,M);

for u=1:N
    for v=1:M
        H(u,v) = exp(-0.5*((sqrt((u-N/2)^2+(v-M/2)^2))/Do)^2);
    end
end

