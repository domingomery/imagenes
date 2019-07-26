
close all
figure(1)
figure(2)
disp('ubique bien las figuras antes de comenzar animacion, y presione Enter...');
pause
disp('cambio de posicion del bloque en el espacio no altera |F(w)|...')
for i=1:2:60
    I = zeros(256,256); I(70+i:75+i,70+i:75+i) = 1;
    J = fft2(I);
    figure(2)
    mesh(abs(fftshift(J)))
    title('Dominio de la Frecuencia')
    figure(1)
    imshow(I(1:2:end,1:2:end))
    title('Dominio del Espacio')
    pause(0.1)
end
disp('pause...');pause


disp('entre mas ancho el bloque en el espacio, mas angosto y mas alto es |F(w)|...')
for i=1:2:60
    I = zeros(256,256); I(70:70+2*i,70:70+2*i) = 1;
    J = fft2(I);
    figure(2)
    mesh(abs(fftshift(J)));axis([0 256 0 256 0 4000])
    title('Dominio de la Frecuencia')
    figure(1)
    imshow(I(1:2:end,1:2:end))
    title('Dominio del Espacio')
    pause(0.1)
end
disp('pause...');pause



% Rotacion
disp('al rotar el bloque en el espacio, tambien rota |F(w)|...')

% Io = zeros(256,256);Io(124:131,124:131)=1;
Io = zeros(256,256);Io(120:135,120:135)=1;
for i=0:5:90
    I = imrotate(Io,i,'bilinear','crop');

    J = fft2(I);
    figure(2)
    mesh(abs(fftshift(J)));axis([0 256 0 256 0 100])
    title('Dominio de la Frecuencia')
    figure(1)
    imshow(I(1:2:end,1:2:end),[])
    title('Dominio del Espacio')
    pause(0.1)
end



