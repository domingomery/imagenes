I = double(imread('onerice.bmp'));
figure(1)
imshow(I,[])
[N,M] = size(I);

n = 3;
m = 2*n+1;

J = zeros(N,M);
for i = 1+n:N-n
    for j=1+n:M-n
        
        s = 0;
        for k=-n:n
            for l=-n:n
                s = s + I(i+k,j+l);
            end
        end
        
        
        J(i,j) = s/m^2; 
    end
end

H = abs(J-I);

figure(2)
imshow(H,[])
