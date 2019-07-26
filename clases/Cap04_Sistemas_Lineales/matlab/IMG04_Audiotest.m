while(1)
    n = input('numero de armonicos? ');
f = zeros(n,1);
a = zeros(n,1);

f = input('vector columna f ?');
a = input('vector columna a ?');


% for i=1:n
%     
%     f(i) = input(sprintf('Frecuencia(%d)? ',i));
%     a(i) = input(sprintf('  Amplitud(%d)? ',i));
%     
% end

Fs  = 40000;       % Sampling frequency 8 kHz
N = 80000;         % Tones of 100 ms
t   = (0:N-1)/Fs; % N samples at Fs
pit = 2*pi*t;

tones = zeros(N,1);

for i=1:n
    tones = tones + a(i)*sin(f(i)*pit');
end
figure(1)
plot(t*1e3,tones);
set(gca, 'Xlim', [0 25]);
title('senal')
xlabel('t (ms)')

figure(2)
bar(f,a)
title('espectro')
xlabel('f (Hz)')
p = audioplayer(tones,Fs);
play(p)
end