% Ejemplos de filtro mediana

close all;
eje = input('Ejemplo? (1:rice, 2:wheel, 3:eight)');
switch eje
    case 1
        figure(1)
        I = imread('rice.png');
        ii = [1:256]'/256;
        map = [ii ii ii];
        imshow(I,map)
        title('imagen original')
        pause
        figure(2)
        imshow(medfilt2(I,[55 55]),map)
        title('imagen filtrada')
        pause
        imshow(abs(double(I)-double(medfilt2(I,[55 55]))),map)
        title('imagen diferencia')
        pause
        imshow(abs(double(I)-double(medfilt2(I,[55 55])))>40)
        title('segmentacion')
    case 2
        I = imread('wheel.bmp');
        figure(1);
        imshow(I);
        title('imagen con fallas');
        for n=3:2:19
            J = medfilt2(I,[n n]);
            D = abs(double(I)-double(J));
            figure(2)
            imshow(J,[])
            title(sprintf('imagen filtrada con mediana de %d x %d',n,n));
            pause
        end
        figure(3)
        t = 20;
        R = D>t;
        imshow(R)
        title(sprintf('imagen binaria con umbral = %d',t))
        pause
        figure(4)
        %     [N,M] = size(R);
        %     m = (n+1)/2;
        %     R(1:m,:) = 0;
        %     R(:,1:m) = 0;
        %     R(N-m+1:N,:) = 0;
        %     R(:,M-m+1:M) = 0;
        R = imclearborder(R);
        imshow(R)
        title('limpieza de bordes');
        pause
        figure(5)
        q = 10;
        Y = bwareaopen(R,q);
        imshow(Y)
        title(sprintf('se eliminan regiones de area menor a %d pixeles',q))
        pause
        L = bwlabel(Y);
        s  = regionprops(L, 'centroid');
        centroids = cat(1, s.Centroid);
        f = length(s);
        figure(6)
        imshow(I)
        hold on
        for i=1:f
            x = centroids(i,1) + [10 10 -10 -10 10];
            y = centroids(i,2) + [10 -10 -10 10 10];
            plot(x,y, 'r')
        end
        title('deteccion de fallas');
        hold off
        
    case 3
        I = imread('eight.tif');
        J = imnoise(I,'salt & pepper',0.02);
        m = 3;
        K = medfilt2(J,[m m]);
        B = imfilter(I,ones(m,m)/m/m);
        figure(1)
        imshow(I,[]);title('Imagen original')
        pause
        figure(2)
        imshow(J,[]);title('Imagen original con salt & pepper')
        pause
        figure(3)
        imshow(B,[]);title(sprintf('Imagen filtrada con promedio (%dx%d)',m,m))
        pause
        figure(4)
        imshow(K,[]);title(sprintf('Imagen filtrada con mediana (%dx%d)',m,m))
        
end