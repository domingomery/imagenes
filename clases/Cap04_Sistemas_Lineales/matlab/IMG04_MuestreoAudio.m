% Ejemplo de submuestreo con sonidos
% D.Mery, Oct. 2011
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
disp('sonido solo gong...');drawnow
sound(y2,Fs)
subplot(6,2,1);plot(t,y2);axis([0 5 -1.5 1.5])
subplot(6,2,2);plot(abs(Y2(1:N2)));axis([0 N2 0 600])
pause

% sonido solo pajarito
disp('sonido solo pajaro...');drawnow
sound(y1,Fs)
subplot(6,2,3);plot(t,y1);axis([0 5 -1.5 1.5])
subplot(6,2,4);plot(abs(Y1(1:N2)));axis([0 N2 0 600])
pause


% sonido ambos
disp('sonido ambos...');drawnow
sound(z,Fs)
subplot(6,2,5);plot(t,z);axis([0 5 -1.5 1.5])
subplot(6,2,6);plot(abs(Z(1:N2)));axis([0 N2 0 600])
pause



y1n = y1;y1n(2:2:end-2)=(y1(1:2:end-2)+y1(3:2:end))/2;
Y1n = fft(y1n);

y2n = y2;y2n(2:2:end-2)=(y2(1:2:end-2)+y2(3:2:end))/2;
Y2n = fft(y2n);

zn = z;zn(2:2:end-2)=(z(1:2:end-2)+z(3:2:end))/2;
Zn = fft(zn);

% sonido solo gong
disp('sonido solo gong submuestreado...');drawnow
sound(y2n,Fs)
subplot(6,2,7);plot(t,y2n);axis([0 5 -1.5 1.5])
subplot(6,2,8);plot(abs(Y2n(1:N2)));axis([0 N2 0 600])
pause

% sonido solo pajarito
disp('sonido solo pajaro submuestreado...');drawnow
sound(y1n,Fs)
subplot(6,2,9);plot(t,y1n);axis([0 5 -1.5 1.5])
subplot(6,2,10);plot(abs(Y1n(1:N2)));axis([0 N2 0 600])
pause

% sonido ambos
disp('sonido ambos submuestreados...')
sound(zn,Fs)
subplot(6,2,11);plot(t,zn);axis([0 5 -1.5 1.5])
subplot(6,2,12);plot(abs(Zn(1:N2)));axis([0 N2 0 600])

