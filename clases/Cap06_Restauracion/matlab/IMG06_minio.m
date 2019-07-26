function Fs = IMG06_minio(G,h)
n = length(h);
N = size(G,2);
M = N + n -1;
H = zeros(N,M);
for i=1:N
    H(i,i:i+n-1) = h;
end
lambda = 1e6;
P = [eye(N,N) zeros(N,n-1)];
Fs = G*(lambda*H+P)*(inv(lambda*H'*H+P'*P))';

