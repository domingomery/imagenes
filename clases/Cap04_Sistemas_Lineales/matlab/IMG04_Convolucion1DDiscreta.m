% Ejemplo Animado de Convolucion 1D
%
% z(t) = suma de dos frecuencias mas ruido gaussiano
% se pretende encontrar cada una de las frecuencias sin ruido
%
% D.Mery, PUC-DCC, Septiembre 2009
% http://dmery.ing.puc.cl

close all
N = 1000;
t = (1:N)/N*8*pi;
x1 = sin(t);
x2 = 0.3*sin(20*t);
x = x1+x2;
r = randn(1,N)*0.1;
m = 25;
h1 = fspecial('gaussian',[1 m],7);
h2 = fspecial('gaussian',[1 m],1);
ax1 = [0 12 -1.2 1.2];
ax2 = [0 12 -0.4 0.4];
subplot(2,4,1);plot(t,x1);title('x1');axis(ax1)
subplot(2,4,2);plot(t,x2);title('x2');axis(ax2)
subplot(2,4,3);plot(t,x);title('x=x1+x2');axis(ax1)
z = x+r;
subplot(2,4,4);plot(t,z);title('z=x+r');axis(ax1)
y1 = conv2(z,h1,'same');
y2 = conv2(z,h2,'same');
subplot(2,4,7);plot(t,y2);title('y2=z*h2');axis(ax1)
subplot(2,4,5);plot(t,y1);title('y1=z*h1');axis(ax1)
subplot(2,4,6);plot(t,y1-y2);title('y1-y2');axis(ax2)
subplot(2,4,8);plot([h1' h2']);title('h1,h2');axis([1 m 0 0.4]);legend('h1','h2');

