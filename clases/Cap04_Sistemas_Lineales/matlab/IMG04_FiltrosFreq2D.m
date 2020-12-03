close all
I = imread('cameraman.tif');
I = imread('guanaco.png');
I = rgb2gray(I);
imshow(I)
title('imagen original')

[N,M] = size(I);

P = 2*N;
Q = 2*M;


filtro = input('Filtro 1: Ideal, 2: Gaussiano 3: Butterworth ?');
Do     = input('Frecuencia de Corte (Do) ?');
S = ['Ideal      '
    'Gaussiano  '
    'Butterworth'];

switch filtro % Ideal
    case 1
        D = zeros(P,Q);
        H = D;
        
        for u=1:P
            for v=1:Q
                D(u,v) = sqrt((u-P/2)^2+(v-Q/2)^2);
            end
        end
        
        H(D<Do) = 1;
    case 2 % Gaussian
        H = zeros(P,Q);
        
        for u=1:P
            for v=1:Q
                H(u,v) = exp(-0.5*((sqrt((u-P/2)^2+(v-Q/2)^2))/Do)^2);
            end
        end
        
    case 3 % Butterworth
        n = input('Orden de Butterworth? ');
        H = zeros(P,Q);
        m = 2*n;
        
        for u=1:P
            for v=1:Q
                H(u,v) = 1/(1+((sqrt((u-P/2)^2+(v-Q/2)^2))/Do)^m);
            end
        end
        
        
end

figure
mesh(H)
title(sprintf('Espectro del Filtro %s',S(filtro,:)));

[N,M] = size(I);

P = 2*N;
Q = 2*M;

[Ph,Qh] = size(H);
if Ph~=P
    error('Numero de filas de H debe ser el doble del numero de filas de I');
end

if Qh~=Q
    error('Numero de columnas de H debe ser el doble del numero de columnas de I');
end


% Zero Padding
Ip = zeros(P,Q);
Ip(1:N,1:M) = I;

% Transformada de Fourier en 2D
II = fft2(Ip);

% Intercambio de cuadrantes
Ipf = fftshift(II);
figure
imshow(log(abs(Ipf)+1),[]);title('Fourier de imagen de entrada')

% Convolucion = multiplicacion en el dominio de la frecuencia
It = H.*Ipf;
figure
imshow(log(abs(It)+1),[]);title('Fourier de imagen filtrada')

% Intercambio de cuadrantes
T = fftshift(It);

% Transformada inversa de fourier
Jp = ifft2(T);

% Eliminacion de parte imaginaria (despreciable aprox = 0) y
% eliminacion de parte correspondiente al zero-padding
J = real(Jp(1:N,1:M));








figure
imshow(J,[])
title('imagen filtrada');







