close all
It = imread('circuit.tif');
i=106;j=206;
w2 = 40;d=2;w=w2/d;
I=It(i:d:i+w2-1,j:d:j+w2-1);
imshow(I,[]);

% if ini
%     nn = 20; % pixels
%     %I                  = imread('taxco.png');
%     %I                  = rgb2gray(I(1:3:end,1:3:end,:));             % grayvalue image
%     %I                  = imread('hoja.png');
%     %I                  = rgb2gray(I);             % grayvalue image
%     bf(1).name         = 'all';                   % definition of
%     bf(1).options.show = 0;                       % first features
%     opf.b              = bf;
%     opf.colstr         = 'gs';                    % chn 1,2 are gray,sal
%     options.opf        = opf;
%     options.selec      = 0;                       % all features
%     options.m          = nn;                      % size of a window mxm
%     options.n0         = 0;                     % number of 0 windows
%     options.n1         = 200;                     % number of 1 windows
%     options.th0        = 0.02;                    % threshold for 0
%     options.th1        = 0.02;                    % threshold for 1
%     options.show       = show;
%     options.win        = nn;
%     f1                 = Bfx_randomsliwin(I,ones(size(I)),options);
%     options.n1         = 750;                     % number of 1 windows
%     options.show       = 0;
%     f2                 = Bfx_randomsliwin(I,ones(size(I)),options);
%     f = [f1;f2];
% end
%N = size(f,1);
%T = eye(N)-ones(N,N)/N;
%Y = (T*f)'; % en este ejemplo cada muestra es una columna!!!


n = w^2;
N = 1000;
% f = fbak(1:N,:);
K = 36; k1 = 6; k2 = 6;

y = I(:);
Ly  = zeros(w,w);
Ly(:) = y;
figure(1)
imshow(Ly,[])
close all;
% N = 10;
% g = fspecial('gaussian',N,1.5);

g = Ly;

N = size(g,1);



G = dct2(g);

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

alpha = sqrt(2/N)*ones(N,1);
alpha(1) = 1/sqrt(N);

% Usando basis para IDCT2
D = zeros(N,N,N,N);
for m=0:N-1
    for n=0:N-1
        for i=0:N-1
            for k=0:N-1
                D(i+1,k+1,m+1,n+1) = alpha(m+1)*alpha(n+1)*cos(pi*(2*i+1)*m/2/N)*cos(pi*(2*k+1)*n/2/N);
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
for m=0:N-1
    Dk = [];
    for n=0:N-1
        Dik(:) = D(:,:,m+1,n+1);
        g2 = g2 + G(m+1,n+1)*Dik;
            LL = [LL Bim_lin(real(Dik))];
            h = [h G(n+1,m+1)]; 
            figure(2)
            imshow(real(g2),[]);
            figure(3)
            imshow(real(Dik),[]);
        p=p+1;
        if p==2
            enterpause
        else
            drawnow
        end
        DDi(indices(m+1,w),indices(n+1,w))=Dik;
        figure(4)
        imshow(DDi,[])
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




