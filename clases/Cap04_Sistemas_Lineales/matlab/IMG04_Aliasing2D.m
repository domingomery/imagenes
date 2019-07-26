% Ejemplo de Figura 4.16 del libro de Gonzalez
close all
I = zeros(96,96);
disp('   <------------- 96 pixels------------>');
disp(' A +-----+-----+-----+-----+-----+-----+');
disp(' | |     |     |     |     |     |     |');
disp(' | +-----+-----+-----+-----+-----+-----+');
disp(' | |     |     |     |     |     |     |');
disp(' | +-----+-----+-----+-----+-----+-----+');
disp(' | |     |     |     |     |     |     |');
disp('96 +-----+-----+-----+-----+-----+-----+');
disp(' | |     |     |     |     |     |     |');
disp(' | +-----+-----+-----+-----+-----+-----+');
disp(' | |     |     |     |     |     |     |');
disp(' | +-----+-----+-----+-----+-----+-----+');
disp(' | |     |     |     |     |     |     |');
disp(' V +-----+-----+-----+-----+-----+-----+');
M = input('ancho del cuadrado en pixeles (e.g. = 16, 6, 0.9174 o 0.4798)?');
while M>0
    for i=0:95
        for j=0:95
            I(i+1,j+1) = (sign(sin(pi/M*i+0.00001)*sin(pi/M*j+0.00001))+1)/2;%sign(sin(2*pi/x*i)*sin(2*pi/x*j));%*sin(j*pi*x));
        end
    end
    figure(1)
    imshow(I,[]);
%    figure(2)
%    imshow(I(1:10,1:10),[])
%    axis on
    M = input('ancho del cuadrado en pixeles (e.g. = 16, 6, 0.9174 o 0.4798)?');
end