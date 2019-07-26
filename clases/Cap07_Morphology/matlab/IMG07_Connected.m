
ejemplo = input('ejemplo sencillo = 0, imagen = 1? ')

if (ejemplo == 0)

    A = [
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 1 1 1 0
0 0 0 0 0 0 1 1 1 0
0 0 0 0 0 1 1 0 1 0
0 0 0 0 0 1 1 1 1 0
0 0 0 1 1 1 0 0 0 0 
0 0 1 1 1 0 0 0 0 0
0 1 0 0 1 0 0 0 0 0 
0 0 1 1 1 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
    ]

    B = ones(3,3); % mascara
    X = zeros(size(A)); %imagen de salida
    X(7,4)=1; %semilla
    ok = 0;
    while not(ok)

        Xk = and(imdilate(X,B),A)
        pause

        d = sum(abs(X(:)-Xk(:)));

        if (d==0)
            ok = 1;
        else
            X = Xk;
        end
    end
else
    close all
    I = imread('cameraman.tif');
    A = edge(I,'log',1e-6,3);
    A = not(A);
%     A(16,:) = 0;
%     A(240,:) = 0;
%     A(:,16) = 0;
%     A(:,240) = 0;
    imshow(A);
    ax0 = axis;
    disp('seleccione pixel blanco...')
    p = round(vl_click);
    %ax = axis;
    %i = round(ax(3));
    %j = round(ax(1));
    
    i = p(2); j = p(1);

    % B = ones(3,3); % mascara
    B = [0 1 0; 1 1 1; 0 1 0];
    X = zeros(size(A)); %imagen de salida
    X(i,j)=1; %semilla
    ok = 0;
    figure(2)
    while not(ok)

        Xk = and(imdilate(X,B),A);
        imshow(Xk)
        drawnow

        d = sum(abs(X(:)-Xk(:)));

        if (d==0)
            ok = 1;
            X = or(X,A); %incluye el borde
        else
            X = Xk;
        end
    end
end