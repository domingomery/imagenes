close all
Fs  = 40000;       % Sampling frequency 8 kHz
N   = 80000;       % Tones of 100 ms
t   = (0:N-1)/Fs;  % N samples at Fs
pit = 2*pi*t;

f = zeros(N,1);

n = 10;
f0 = 110;


a = [0 0 0 1 0 0.75 0 0 0.5 0];
figure(1)
subplot(2,1,1)
bar(a)
title('original spectrum')
axis([0 10 0 2])
setw

for k=1:n
    f = f + a(k)*sin(k*f0*pit');
end

K = 365;
F = zeros(n,1);
figure(2)
subplot(3,1,1);plot(f(1:K),'linewidth',2)
axis([0 K -2 2]);
title('f: original function')
setw
enterpause
for k=1:n
    figure(2)
    z = sin(k*f0*pit');
    q = z.*f;
    subplot(3,1,2);plot(z(1:K),'linewidth',2);title(['b: basis frequency = ' num2str(k)])
    axis([0 K -2 2]);
    subplot(3,1,3);bar(q(1:K));
    axis([0 K -2 2]);
    setw
    F(k) = mean(q)*2;
    title(['\int f x b = ' sprintf('%5.4f',F(k))])

    figure(1)
    subplot(2,1,2)
    bar(abs(F))
    axis([0 10 0 2])
    hold on
    plot(k,0,'rx')
    hold off
    title('computed spectrum')

    
    enterpause
    
end

