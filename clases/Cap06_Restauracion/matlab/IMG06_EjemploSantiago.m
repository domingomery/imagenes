F = double(imread('santiago.png'));

F = imresize(F,1.25);


figure(1);

[Nf,Mf] = size(F);


n = 150;


N = round(Nf*1.5); % ancho de G

G = zeros(Nf,N);


for j=1:n
    j1 = j; j2 = j1+N-1;
    G = G + F(:,j1:j2);
    figure(1)
    clf
    imshow(uint8(F))
    axis on
    title(['Image Original: captura desde columna 1 hasta columna ' num2str(N+j-1)])
    hold on
    x = [j2 j2 j1 j1 j2];
    y = [1 Nf Nf 1 1];
    plot(x,y,'r','linewidth',2)
    %plot([1 j2],0.1*[Nf Nf],'b','linewidth',5)
    quiver(1,0.1*Nf,j2,0,1,'color','b','linewidth',5)
    quiver(j2,0.1*Nf,-j2+1,0,1,'color','b','linewidth',5)
    
    
    figure(2)
    imshow(uint8(G/j))
    axis on
    title(['Imagen Degradada (' num2str(size(G,1)) 'x' num2str(size(G,2)) ') con movimiento n = ' num2str(j) ]);
    drawnow
    if j==1
       pause
    end
    pause(0)
end

pause

G = G/n;
h = ones(1,n)/n;
Fs = IMG06_minio(G,h);
figure(3)
imshow(Fs,[])
axis on
title(['Imagen Restaurada (' num2str(size(Fs,1)) 'x' num2str(size(Fs,2)) ')'])

