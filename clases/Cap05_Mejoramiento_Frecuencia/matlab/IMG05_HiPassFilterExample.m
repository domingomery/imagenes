close all
I = imread('Fishbones.bmp');
imshow(I)
title('imagen original')

[N,M] = size(I);

filtro = input('Filtro 1: Ideal, 2: Gaussiano 3: Butterworth ?');
Do     = input('Frecuencia de Corte (Do) ?');
S = ['Ideal      '
    'Gaussiano  '
    'Butterworth'];

% Pasa bajos
switch filtro % Ideal
    case 1
        H = IMG05_IdealMask(N,M,Do);
    case 2 % Gaussian
        H = IMG05_GaussianMask(N,M,Do);
    case 3 % Butterworth
        n = input('Orden de Butterworth? ');
        H = IMG05_ButterworthMask(N,M,Do,n);
end

% Pasa altos
H = 1-H;


J = IMG05_FiltroFrecuencia(I,H,0);

figure
imshow(J,[])

K = abs(J);

mk = round((max(K(:))/10));

D = K>mk;

figure
imshow(abs(J),[])
title('K: abs(J)')

figure
Bio_edgeview(I,D)
title(['Detection: K>' num2str(mk)])


