close all

L  = 8;   % rotations
S  = 8;   % dilations
fh = 0.3;   % highest frequency
fl = 0.03; % lowest frequency
M  = 101;  % mask size


alpha = (fh/fl)^(1/(S-1));
sx = sqrt(2*log(2))*(alpha+1)/2/pi/fh/(alpha-1);
sy = 10*sqrt(2*log(2)-(2*log(2)/2/pi/sx/fh)^2)/(2*pi*tan(pi/2/L)*(fh-2*log(1/4/pi^2/sx^2/fh)));
u0 = fh;


% g = zeros(S,L);
% size_out = size(I)+[M M]-1;
% Iw = fft2(I,size_out(1),size_out(2));
% n1 = (M+1)/2;
% [NN,MM] = size(I);

FF = [];
for p=1:S;
    Fp = [];
    for q=1:L
        [q p]
        f = zeros(M,M);
        sx2 = sx*sx;
        sy2 = sy*sy;
        c = (M+1)/2;
        ap = alpha^-p;
        tq = pi*(q-1)/L;
        
        f_exp = 2*pi*sqrt(-1)*u0;
        for i=1:M
            x = i - c;
            for j=1:M
                y = j - c;
                x1 = ap*(x*cos(tq)+y*sin(tq));
                y1 = ap*(y*cos(tq)-x*sin(tq));
                f(i,j) = exp(-0.5*(x1*x1/sx2+y1*y1/sy2))*exp(f_exp*x1);
                
            end
        end
        f = ap*f/2/pi/sx/sy;
        Fp = [Fp real(f)];
    end
    FF = [FF;Fp/max2(Fp)];
end
figure(1)
imshow(log(abs(FF)+1),[])
figure(2)
mesh(real(f))