T  = input('Tiempo total (ejemplo: 4, 16, 32): ');
t  = 0:0.01:T;
f  = sin(2*pi*t/2);
figure(1)
clf
plot(t,f)
while(1)
    figure(1)
    DT = input('cada cuantos segundos se muestreo? ');
    tk = 0:DT:T;
    fk  = sin(2*pi*tk/2);
    hold off
    plot(t,f)
    hold on
    plot(tk,fk,'r.')
    plot(tk,fk,'ro')
    figure(2)
    hold off
    plot(tk,fk)    
end

