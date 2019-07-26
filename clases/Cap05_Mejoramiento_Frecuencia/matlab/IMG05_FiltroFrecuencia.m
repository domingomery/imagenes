% function J = IMG05_FiltroFrecuencia(I,H,show)
%
% Filtrado de una imagen I utilizando un filtro H. La imagen I esta en el
% dominio del espacio, el filtro H en el dominio de la frecuencia.
%
% El tamano de H debe ser igual al tamano de I (NxM)
%
% J es la imagen de salida (en el dominio del espacio) de las mismas
% dimensiones de la imagen I.
%
% D.Mery, DCC-PUC, Octubre 2018
% http://dmery.ing.puc.cl
%

function J = IMG05_FiltroFrecuencia(I,H,show)

if not(exist('show','var'))
    show = 0;
end

[N,M] = size(I);


[Nh,Mh] = size(H);
if Nh~=N
    error('Numero de filas de H debe ser igual al numero de filas de I');
end

if Mh~=M
    error('Numero de columnas de H debe ser igual al numero de columnas de I');
end

% Intercambio de cuadrantes
Hf = fftshift(H);


if show==1
    figure(1)
    imshow(I,[])
    title('I: Imagen Original')
    figure(2)
    mesh(H)
    title('H: Filtro en el dominio de la frecuencia')
    figure(3)
    mesh(Hf)
    title('Hf: Intercambio de cuadrantes de H')
end


% Transformada de Fourier en 2D
F = fft2(I);

if show==1
    figure(4)
    imshow(log(abs(F)+1),[])
    title('F: Tranformada de Fourier de I')
    figure(5)
    imshow(log(abs(fftshift(F))+1),[])
    title('Intercambio de cuadrantes de F')
end



% Convolucion = multiplicacion en el dominio de la frecuencia
G = Hf.*F;

% Transformada inversa de fourier
Jp = ifft2(G);

J = real(Jp);

if show==1
    figure(6)
    imshow(log(abs(G)+1),[])
    title('G: Tranformada de Fourier de I filtrado')
    figure(7)
    imshow(log(abs(fftshift(F))+1),[])
    title('Intercambio de cuadrantes de G')
    figure(8)
    imshow(J,[])
    title('J: Imagen Filtrada')
end



