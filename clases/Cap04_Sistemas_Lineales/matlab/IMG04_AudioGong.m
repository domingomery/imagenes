% Ejemplo de filtrado en frecuencias usando Transformada de Fourier en 1D
% D.Mery, Sept. 2010
% PUC-DCC, http//dmery.ing.puc.cl


% pajarito
load chirp.mat
y1 = [y;y;y;y];

% gong
load gong.mat;
y2 = y;
N  = length(y2);
N2 = N/2;
y1 = y1(1:N);


z = (y1+y2);
Z = fft(z);

Y1 = fft(y1);
Y2 = fft(y2);

t   = (0:N-1)/Fs; % 800 samples at Fs

figure(1)
clf



% sonido solo gong
disp('sonido solo gong...')
sound(y2,Fs)
subplot(5,2,1);plot(t,y2);axis([0 5 -1.5 1.5])
subplot(5,2,2);plot(abs(Y2(1:N2)));axis([0 N2 0 600])
pause

% sonido solo pajarito
disp('sonido solo pajaro...')
sound(y1,Fs)
subplot(5,2,3);plot(t,y1);axis([0 5 -1.5 1.5])
subplot(5,2,4);plot(abs(Y1(1:N2)));axis([0 N2 0 600])
pause


% sonido ambos
disp('sonido ambos...')
sound(z,Fs)
subplot(5,2,5);plot(t,z);axis([0 5 -1.5 1.5])
subplot(5,2,6);plot(abs(Z(1:N2)));axis([0 N2 0 600])


% eliminacion de gong


n = input('frecuencia para eliminar sonido del gong (0=fin)? ');

while n>0
    G          = ones(N,1);
    G(1:n+1)   = 0;
    G(N-n+1:N) = 0;
    H          = G.*Z;
    h          = real(ifft(H));
    sound(h,Fs);
    subplot(5,2,7);plot(t,h);axis([0 5 -1.5 1.5])
    subplot(5,2,8);plot(abs(H(1:N2)));axis([0 N2 0 600])
    n = input('frecuencia para eliminar sonido del gong (0=fin)? ');
end


n = input('frecuencia para eliminar sonido del pajarito (0=fin)? ');
while n>0
    G          = zeros(N,1);
    G(1:n+1)   = 1;
    G(N-n+1:N) = 1;
    H          = G.*Z;
    h          = real(ifft(H));
    sound(h,Fs);
    subplot(5,2,9);plot(t,h);axis([0 5 -1.5 1.5])
    subplot(5,2,10);plot(abs(H(1:N2)));axis([0 N2 0 600])
    n = input('frecuencia para eliminar sonido del pajarito (0=fin)? ');
end





