% Ejemplo de despliegue de imagenes a color
%
% Objetivo: mostrar los conceptos de canales RGB y paletas de color.
%
% D.Mery
% PUC-DCC, Agosto-2008

close all
disp('Despliegue de una imagen a color, histograma y sus canales RGB');

I = imread('peppers.png');

[r,i] = imhist(I(:,:,1));
[g,i] = imhist(I(:,:,2));
[b,i] = imhist(I(:,:,3));

figure(1)
imshow(I)
title('imagen a color')

figure(2)
plot(i,r,'r',i,g,'g',i,b,'b')
title('histogramas rgb')
z = zeros(256,1);
m = (1:256)'/256;

r_map = [m z z];
g_map = [z m z];
b_map = [z z m];

R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

figure(3)
imshow(R,r_map);title('red');
figure(4)
imshow(G,g_map);title('green');
figure(5)
imshow(B,b_map);title('blue');

disp('presione enter para continuar...');
pause
disp('otra forma de desplegar los canales...')
J = I;
J(:,:,1) = 0; % se anula canal rojo
J(:,:,2) = 0; % se anula canal verde
close all
imshow(J)
title('componente azul');
disp('presione enter para continuar...');
pause

c = zeros(8,3);
c(1,:) = [1 0 0];       % rojo
c(2,:) = [0 1 0];       % verde
c(3,:) = [0 0 1];       % azul
c(4,:) = [1 1 0]/2;     % amarillo
c(5,:) = [1 0 1]/2;     % magenta
c(6,:) = [0 1 1]/2;     % cyan
c(7,:) = [1 0.5 0]/1.5; % naranjo
c(8,:) = [0.5 0 1]/1.5; % morado
k=1;
X = (1:256)'*ones(1,256);

while(k>0)
    
    disp('1: rojo')
    disp('2: verde')
    disp('3: azul')
    disp('4: amarillo')
    disp('5: magenta')
    disp('6: cyan')
    disp('7: naranjo')
    disp('8: morado')
    disp('0: fin')
    disp(' ')
    k = input('ingrese color:');
    
    
    if (k>0)
        h = c(k,:);
        
        t = h/max(h);
        map = m*t;
        
        
        J   = (R*h(1)+G*h(2)+B*h(3));%/sum(h);
        J = uint8(J);
        
        figure(1)
        imshow(J,map)
        figure(2)
        imhist(J)
        figure(3)
        imshow(X,map)
    end
end

close all
disp('Paleta de colores para la luna');
X = imread('../images/moon.tif');
figure(1)
imshow(X,[]);
title('imagen original')

map_g = [m m m];
figure(2)
imshow(X,map_g);
title('imagen en blanco y negro')

mz = [256:-1:1]'/256;

map_x = [m mz m];
figure(3)
imshow(X,map_x);
title('imagen en pseudo color 1')

c1 = abs(cos(8*pi*m));
c2 = abs(cos(4*pi*m));
c3 = abs(cos(2*pi*m));
map_c = [c1 c2 c3];

figure(4)
imshow(X,map_c);
title('imagen en pseudo color 2')

disp('Estudio de las paletas hsv, gray, hot, cool, bone, copper, flag...');
disp('presione enter... ');
pause
close all
X = uint8(double(X)/4);
figure(1); imshow(X,gray);title('gray');
figure(2); imshow(X,hsv);title('hsv');
figure(3); imshow(X,hot);title('hot');
figure(4); imshow(X,cool);title('cool');
figure(5); imshow(X,bone);title('bone');
figure(6); imshow(X,copper);title('copper');
figure(7); imshow(X,flag);title('flag');
figure(8); imshow(X,pink);title('pink');
figure(9); imshow(X,parula);title('parula');
