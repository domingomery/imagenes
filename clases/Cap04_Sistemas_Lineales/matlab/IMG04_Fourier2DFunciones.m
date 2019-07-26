clear all
close all


i=1;
while i>0
                disp('1. f(k,l) = cos(2*p*pi*k/N);');
                disp('2. f(k,l) = cos(2*p*pi*k/N)+cos(2*pi*q*l/N);');
                disp('3. f(k,l) = cos(2*p*pi*k/N)*cos(2*pi*q*l/N);');
                disp('4. f(N/2-n:N/2+n-1,N/2-n:N/2+n-1) = ones(2*n,2*n);');
                disp('5. f = fspecial(''gaussian'',[N N],sig);');
                disp('6. f = double(imread(''rice.png''));');
                disp('7. f = double(imread(''cameraman.tif''));');        


    i = input('Seleccione imagen (1 a 7, 0 para terminar): ');

N=512;
f=zeros(N,N);
switch i
    case 1
        p = input('Seleccione frecuencia: ');
        for k=1:N
            for l=1:N
                f(k,l)=cos(2*p*pi*k/N);
            end
        end
    case 2
        p = input('Seleccione frecuencia x: ');
        q = input('Seleccione frecuencia y: ');
        for k=1:N
            for l=1:N
                f(k,l)=cos(2*p*pi*k/N)+cos(2*pi*q*l/N);
            end
        end    
    case 3
        p = input('Seleccione frecuencia x: ');
        q = input('Seleccione frecuencia y: ');
        for k=1:N
            for l=1:N
                f(k,l)=cos(2*p*pi*k/N)*cos(2*pi*q*l/N);
            end
        end
    case 4
        n = input('Seleccione tamaño cuadrado (4 o 64): ');
        f(N/2-n:N/2+n-1,N/2-n:N/2+n-1)=ones(2*n,2*n);
    case 5
        sig = input('Sigma ? ');
        f= fspecial('gaussian',[N N],sig);
    case 6
        f = double(imread('rice.png'));
    case 7
        f = double(imread('cameraman.tif'));        
end

figure(1);
imshow(f,[]);title('imagen original f')
figure(2);
mesh(f);title('f en 3D')
F=fft2(f);
figure(3);title('F=fft2(f) [abs(F)]')
imshow(abs(F),[]);
figure(4);
imshow(abs(fftshift(F)),[]);title('F=fft2(f) [abs(fftshift(F))]')
figure(5);
imshow(log(abs(fftshift(F))+1),[]);title('F=fft2(f) [log(abs(fftshift(F))+1)]')
figure(6);
mesh(log(abs(fftshift(F))+1));title('F=fft2(f) [log(abs(fftshift(F))+1)]')


end

close all
clear all

p=1;
disp('Ejemplo de filtrado gaussiano en la imagen rice.png')
f=double(imread('rice.png'));
figure(1);
imshow(f,[]);


while p
h= fspecial('gaussian',[256 256],p);
F=fft2(f);
H=fft2(h);
G=F.*H;
g=ifft2(G);
figure(2);
imshow(fftshift(g),[]);title('pasa-bajos')
figure(3);
imshow(abs(f-fftshift(g)),[]);title('pasa-altos')
p = input('sigma?' );
end

close all
clear all

disp('Ejemplo de filtrado gaussiano en la imagen cameraman.tif')
p=1;

f=double(imread('cameraman.tif'));
figure(1);
imshow(f,[]);


while p
h= fspecial('gaussian',[256 256],p);
F=fft2(f);
H=fft2(h);
G=F.*H;
g=ifft2(G);
figure(2);
imshow(fftshift(g),[]);title('pasa-bajos')
figure(3);
imshow(abs(f-fftshift(g)),[]);title('pasa-altos')
p = input('Sigma?' );
end





