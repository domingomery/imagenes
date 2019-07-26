% Tomado de Castleman (1996), pp. 286
N = 128;
W = zeros(N,N);
s = -sqrt(-1)*2*pi/N;
for i=0:N-1
    for k=0:N-1
        W(i+1,k+1) = exp(s*i*k);
    end
end


% Transformada en 1D
f = rand(N,1); % senhal en el tiempo
F = W*f;       % DFT de f, es lo mismo que F = fft(f)


% Transformada en 2D
I = rand(N,N); % imagen en el espacio
G = W*I*W;     % DFT de I, es lo mismo que G = fft2(I)


% Elemento u,v de G
u = 5; v = 7;
Guv = G(u,v);

Guv1 = W(u,:)*I*W(:,v); % esto es lo mismo que G(u,v)


% Usando FFT2
Gfft = fft2(I);
Gfftuv = Gfft(u,v);


% es lo mismo que usando las Funciones Basis para u,v
Wuv2 = zeros(N,N);
for i=1:N;
    for k=1:N;
        Wuv2(i,k)=W(i,u)*W(v,k);
    end;
end
Guv2 = sum(sum(Wuv2.*I));

% o bien
Wuv3 = W(:,u)*W(v,:); 
Guv3 = sum(sum(Wuv3.*I));


[Guv;Guv1;Guv2;Guv3;Gfft(u,v)]