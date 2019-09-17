close all

I = imread('cameraman.tif');

f = double(I(100,:))';

n = length(f);

plot(f)
hold on

F = fft(f);

Fa = abs(F);

s = sum(Fa);

ener  = 0.95;

sm = ener*s;

[ii,jj] = sort(Fa,'descend');
figure(2)
plot(ii)

x = 0;

i = 0;

G = zeros(n,1);

t = 0;
while x < sm
    i = i+1;
    G(jj(i)) = F(jj(i));
    x = x + ii(i);
    t = t+1;
end

g = real(ifft(G));
e = abs(f-g);
figure(1)
plot(g,'r')

fprintf('     energy: %f\ncompression: %f\n      error: %f\n',ener,t/n,mean(e))


