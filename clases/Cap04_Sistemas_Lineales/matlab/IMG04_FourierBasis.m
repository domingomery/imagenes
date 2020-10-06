% Funciones base de Fourier 2D
N=16;
d = 1;
close all
j=sqrt(-1);
X = [];
for m=0:d:N-1
    Xf = [];
    m
    for n=0:d:N-1
        x = zeros(N,N);
        for i=1:N
            for k=1:N
                x(i,k) = exp(-j*2*pi/N*(m*i+n*k));
            end
        end
        x0=(real(x)+1)*128;
        imshow(imresize(x0,[64 64]),[]);pause(0)
        drawnow
        Xf = [Xf x0];
    end
    X = [X;Xf];
end
imshow(X,[])
hold on
N2 = size(X,1);
for i=0:N2/N:N2
        plot([i i]+0.5,[0 N2]+0.5,'g')
        plot([0 N2]+0.5,[i i]+0.5,'g')
end        

                