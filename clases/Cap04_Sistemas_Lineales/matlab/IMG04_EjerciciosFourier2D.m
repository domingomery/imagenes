close all
N=256;
f1=zeros(N,N);
p = 16;
for k=1:N
    for l=1:N
        f1(k,l)=cos(2*p*pi*k/N);
    end
end
I = Bim_lin(f1);
imwrite(I,'I1.png','png')
figure; imshow(I);F = abs(fft2(I));figure;imshow(F(1:32,1:32),[]); pause


f2=zeros(N,N);
q = 8;
for k=1:N
    for l=1:N
        f2(k,l)=cos(2*q*pi*l/N);
    end
end
I = Bim_lin(f2);
imwrite(I,'I2.png','png')
figure; imshow(I);F = abs(fft2(I));figure;imshow(F(1:32,1:32),[]); pause


f3 = f1+f2;
I = Bim_lin(f3);
imwrite(I,'I3.png','png')
figure; imshow(I);F = abs(fft2(I));figure;imshow(F(1:32,1:32),[]); pause

f4 = f1.*f2;
I = Bim_lin(f4);
imwrite(I4,'I4.png','png')

figure; imshow(I);F = abs(fft2(I));figure;imshow(F(1:32,1:32),[]); pause







