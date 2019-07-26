close all
N = 1000;
T = 20; % [sec]
t = (0:N-1)'/N*T;
dt = T/N;

a = [1 0.8]'; % amplitudes
w = [1  2 ]'; % frecuencias


f = zeros(N,1);
for i=1:length(a)
    f = f + a(i)*sin(2*pi*w(i)*t);
end
r = 2.5*(rand(N,1)-0.5);
fr = f + r;

ax = [0 T/8 -1.5 1.5];
figure(1)
clf
subplot(2,2,1);plot(t,f),ylabel('f');axis(ax)
subplot(2,2,3);plot(t,r),ylabel('r');axis(ax)
subplot(2,2,4);plot(t,fr),ylabel('f+r');axis(ax)

F = fft(f);
R = fft(r);
Fr = fft(fr);

Fm = abs(F)/N;
Rm = abs(R)/N;
Frm = abs(Fr)/N;

dw = 1/T;
w = (0:N-1)'*dw;

figure(2)
clf
subplot(2,2,1);plot(w(1:N/2),Fm(1:N/2)),ylabel('F');
subplot(2,2,3);plot(w(1:N/2),Rm(1:N/2)),ylabel('R');
subplot(2,2,4);plot(w(1:N/2),Frm(1:N/2)),ylabel('F+R');

disp('pause...');pause
% muestreo
while(1)
wk = input('ancho?');
k  = fix(wk/dw+1);

W = zeros(N,1);
W(1:k) = 1;
W(N-k+2:N) = 1;
F2 = W.*Fr;
F2m = abs(F2)/N;
f2 = ifft(F2);
figure(1)
subplot(2,2,2);plot(t,real(f2)),ylabel('f2');axis(ax)
figure(2)
subplot(2,2,2);plot(w(1:N/2),F2m(1:N/2)),ylabel('F2');
eo = mean(abs(f-fr));
e = mean(abs(f-real(f2)));
disp(sprintf('error promedio cambia de %f a %f.',eo,e))
figure(3)
plot(t,[f fr real(f2)]),legend('f','fr','f2');axis(ax)
end