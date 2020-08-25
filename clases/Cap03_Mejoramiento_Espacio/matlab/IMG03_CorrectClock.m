close all
I = rgb2gray(imread('clock.jpg'));
[N,M] = size(I);

imshow(I);
hold on

ini = 1;

if ini == 1
    
    d = 100;
    r = 500;
    m = [0 0 0];
    
    % point 1
    disp('click 12...');
    p = vl_click;plot(p(1),p(2),'r*');
    b1 = p;
    c  = [r+d d 1];
    X1 = [c m
        m c];
    
    % point 2
    disp('click 03...');
    p = vl_click;plot(p(1),p(2),'r*');
    b2 = p;
    c  = [2*r+d r+d 1];
    X2 = [c m
        m c];
    
    % point 3
    disp('click 06...');
    p = vl_click;plot(p(1),p(2),'r*');
    b3 = p;
    c  = [r+d 2*r+d 1];
    X3 = [c m
        m c];
    
    % point 4
    disp('click 09...');
    p = vl_click;plot(p(1),p(2),'r*');
    b4 = p;
    c  = [d r+d 1];
    X4 = [c m
        m c];
    
end

X = [X1;X2;X3;X4];
b = [b1;b2;b3;b4];
a = inv(X'*X)*X'*b;

A = [a(1) a(2);a(4) a(5)];
B = [a(3);a(6)];


Np = 2*r+2*d;
Mp = Np;
J = zeros(Np,Mp);
Z = zeros(N,M);
for xp=1:Mp
    for yp=1:Np
        z = round(A*[xp;yp] + B);
        x = z(1); y = z(2);
        if x>0 && x<= M && y>0 && y<= N
            J(yp,xp) = I(y,x);
            Z(y,x) = 1;
        end
    end
end
figure(2)
imshow(J,[])
