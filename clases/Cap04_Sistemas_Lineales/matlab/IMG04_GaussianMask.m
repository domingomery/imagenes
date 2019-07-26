% function H = IMG04_GaussianMask(P,Q,Do)
%
% Construccion de mascara H en el dominio de la frecuencia para un filtro
% Gaussiano.
% 
% El tamano de la matriz H es PxQ
% PxQ debe ser del tamano de la imagen con zero-padding, es decir si la 
% imagen I es de NxM pixels conviene hacer P=2*N, y Q=2*M.
% La frecuencia de corte es Do.
%
% D.Mery, DCC-PUC, Octubre 2011
% http://dmery.ing.puc.cl
%
function H = IMG04_GaussianMask(P,Q,Do)

H = zeros(P,Q);

for u=1:P
    for v=1:Q
        H(u,v) = exp(-0.5*((sqrt((u-P/2)^2+(v-Q/2)^2))/Do)^2);
    end
end



