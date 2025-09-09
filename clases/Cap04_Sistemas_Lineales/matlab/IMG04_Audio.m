% Ejemplo de filtrado en frecuencias usando Transformada de Fourier en 1D
% D.Mery, Sept. 2010-2012
% probar con distintas senhales s1, s2, s3, s4
% PUC-DCC, http//dmery.ing.puc.cl


Fs  = 50000;       
N   = 200000;       
t   = (0:N-1)/Fs;  
pit = 2*pi*t;

figure(1)
clf

fw = [1 1.5 1.75 2 ];
a  = [1 1 1 0];

a1 = a(1); f1 = fw(1)*440;
a2 = a(2); f2 = fw(2)*440;
a3 = a(3); f3 = fw(3)*440;
a4 = a(4); f4 = fw(4)*440;

as = a1+a2+a3+a4;
a1 = a1/as;
a2 = a2/as;
a3 = a3/as;
a4 = a4/as;



s1 = a1*sin(f1*pit);
s2 = a2*sin(f2*pit);
s3 = a3*sin(f3*pit);
s4 = a4*sin(f4*pit);

s  = s1+s2+s3+s4;


S1 = fft(s1);
S2 = fft(s2);
S3 = fft(s3);
S4 = fft(s4);
S  = fft(s );


n = 200;

% b = t(end);
b = t(n);
N2 = N/10;

p = audioplayer(s,Fs);
play(p)
subplot(5,2,1);plot(t(1:n),s1(1:n),'linewidth',3);axis([0 b -1 1]);title('TIME')
subplot(5,2,2);plot(abs(S1(1:N2)),'linewidth',3);axis([0 N2 0 25000]);title('FREQUENCE')
subplot(5,2,3);plot(t(1:n),s2(1:n),'linewidth',3);axis([0 b -1 1]);
subplot(5,2,4);plot(abs(S2(1:N2)),'linewidth',3);axis([0 N2 0 25000]);
subplot(5,2,5);plot(t(1:n),s3(1:n),'linewidth',3);axis([0 b -1 1]);
subplot(5,2,6);plot(abs(S3(1:N2)),'linewidth',3);axis([0 N2 0 25000]);
subplot(5,2,7);plot(t(1:n),s4(1:n),'linewidth',3);axis([0 b -1 1]);
subplot(5,2,8);plot(abs(S4(1:N2)),'linewidth',3);axis([0 N2 0 25000]);
subplot(5,2,9);plot(t(1:n),s(1:n),'linewidth',3);axis([0 b -1 1]);
subplot(5,2,10);plot(abs(S(1:N2)),'linewidth',3);axis([0 N2 0 25000]);
setw
