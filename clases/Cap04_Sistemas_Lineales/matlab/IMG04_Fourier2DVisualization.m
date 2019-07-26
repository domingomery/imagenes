close all
It = imread('circuit.tif');
i=106;j=206;
w2 = 40;d=2;w=w2/d;
I=It(i:d:i+w2-1,j:d:j+w2-1);
imshow(I,[]);

n = w^2;

K = 36; k1 = 6; k2 = 6;

y = I(:);
Ly  = zeros(w,w);
Ly(:) = y;
figure(1)
imshow(Ly,[])
close all;

g = Ly;

N = size(g,1);

G = fft2(g);


% DFT2
% G1 = zeros(N,N);
% j = sqrt(-1);
% for m=0:N-1
%     for n=0:N-1
%         for i=0:N-1
%             for k=0:N-1
%                 G1(m+1,n+1) = G1(m+1,n+1)+g(i+1,k+1)*exp(-2*pi*j*((m*i+n*k)/N));
%             end
%         end
%     end
% end


% IDFT2
% g1 = zeros(N,N);
% j = sqrt(-1);
% for m=0:N-1
%     for n=0:N-1
%         for i=0:N-1
%             for k=0:N-1
%                 g1(m+1,n+1) = g1(m+1,n+1)+G(i+1,k+1)*exp(2*pi*j*((m*i+n*k)/N));
%             end
%         end
%     end
% end
% g1 = g1/N^2;

% Usando basis para IDFT2

j = sqrt(-1);
D = zeros(N,N,N,N);
for m=0:N-1
    for n=0:N-1
        for i=0:N-1
            for k=0:N-1
                D(m+1,n+1,i+1,k+1) = exp(2*pi*j*((m*i+n*k)/N))/N^2;
            end
        end
    end
end

g2 = zeros(N,N);
Dik = zeros(N,N);
Di = [];
figure(1)
imshow(g,[]);

LL = [];
h = [];

p = 0;
Gth = max2(abs(G))*0.02;
DDi = zeros(w^2,w^2);
Gshow = zeros(size(G));
for i=0:N-1
    Dk = [];
    for k=0:N-1
        Gshow(i+1,k+1) = abs(G(i+1,k+1)); 
        Dik(:) = D(:,:,i+1,k+1);
        g2 = g2 + G(i+1,k+1)*Dik;
        if abs(G(i+1,k+1))>Gth
            LL = [LL Bim_lin(real(Dik))];
            h = [h G(i+1,k+1)]; 
            figure(2)
            imshow(real(g2),[]);
            %figure(3)
            %imshow(real(Dik),[]);
        end
        p=p+1;
        if p==2
            enterpause
        else
            drawnow
        end
        DDi(indices(i+1,w),indices(k+1,w))=Dik;
        figure(4)
        %imshow([real(DDi) imag(DDi)],[])
        imshow(real(DDi),[])
        figure(7)
        mesh((sqrt(Gshow)+1)')        
        view(66,56)        
        drawnow
    end
end
hold on
N2 = size(Di,1);
for i=0:N2/N:N2
    plot([i i]+0.5,[0 N2]+0.5,'r')
    plot([0 N2]+0.5,[i i]+0.5,'r')
end

figure(5)
imshow([Bim_lin(g) LL Bim_lin(g2)],[])
figure(6)
bar(abs(h))




