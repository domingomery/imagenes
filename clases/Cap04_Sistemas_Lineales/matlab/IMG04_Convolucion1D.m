% Ejemplos de Convolucion 1D

% Ejemplo 1: Funcion sinusoidal ruidosa

t = (0:0.1:8*pi);
n = length(t);
xp = sin(t)+sin(2*t);
x  = xp + 0.25*randn(1,n);

figure(1)
plot(t,x)
title('se?al original (con ruido)');
xlabel('t');
ylabel('x');

m = 1;
while(m>0)
    m = input('tamanho de la ventana promedio [0 para terminar]?');
    
    g = ones(1,m)/m;
    y = conv2(x,g,'same');
    
    figure(2)
    plot(t,[xp' x' y'])
    title(sprintf('se?al filtrada con g = ones(%d,1)/%d',m,m));
    xlabel('t');
    ylabel('y');
    legend('original sin ruido','con ruido','filtrada')
end



% Ejemplo 2: Deteccion de bordes
close all

xp = [zeros(1,10) 2*ones(1,10) ones(1,10) 3*ones(1,20) -ones(1,10) zeros(1,10)];
n = length(xp);
t = (0:n-1);
x  = xp + 0.05*randn(1,n);

figure(1)
plot(t,x)
title('se?al original (con ruido)');
xlabel('t');
ylabel('x');

m = 1;
while(m>0)
    m = input('m = [0 para terminar]?');
    m1 = fix(m/2);
    m2 = m-2*m1;
    if (m2==1)
        g = [-ones(1,m1) 0 ones(1,m1)];
    else
        g = [-ones(1,m1) ones(1,m1)];
    end
    g
    y = conv2(x,g,'same');
    % y = conv2(y,g,'same');
    figure(2)
    plot(t,[x' y'])
    title(sprintf('se?al filtrada',m,m));
    xlabel('t');
    ylabel('y');
    legend('original','filtrada')
end
