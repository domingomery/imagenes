% function J = IMG05_FiltroFrecuencia(I,H)
%
% Filtrado de una imagen I utilizando un filtro H. La imagen I esta en el
% dominio del espacio, el filtro H en el dominio de la frecuencia.
%
% El tamano de H debe ser igual al tamano de I.
% Si el tamano de la matriz H es PxQ entonces
% PxQ debe ser del tamano de la imagen con zero-padding, es decir si la 
% imagen I es de NxM pixels conviene hacer P=2*N, y Q=2*M.
% 
% J es la imagen de salida (en el dominio del espacio) de las mismas
% dimensiones de la imagen I.
%
% D.Mery, DCC-PUC, Octubre 2013
% http://dmery.ing.puc.cl
%

function J = IMG04_FiltroFrecuencia(I,H)

[N,M] = size(I);


[Nh,Mh] = size(H);
if Nh~=N
    error('Numero de filas de H debe ser igual al numero de filas de I');
end

if Mh~=M
    error('Numero de columnas de H debe ser igual al numero de columnas de I');
end


% Transformada de Fourier en 2D
II = fft2(I);

% Intercambio de cuadrantes
Ipf = fftshift(II);

% Convolucion = multiplicacion en el dominio de la frecuencia
It = H.*Ipf;

% Intercambio de cuadrantes
T = fftshift(It);

% Transformada inversa de fourier
Jp = ifft2(T);

% Eliminacion de parte imaginaria (despreciable aprox = 0) y
% eliminacion de parte correspondiente al zero-padding
J = real(Jp(1:N,1:M));







