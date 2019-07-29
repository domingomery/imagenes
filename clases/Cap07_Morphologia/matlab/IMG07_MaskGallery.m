% average

x = input('1: average, 2: median? '); 
Ia = [];
n = 25;
m = n+1;
n2 = 2*n+1;
ki = 11;
kj = 21;
Y = [];
for i=1:1:ki
    X = zeros(n2,n2);
    X(m-i:m+i,m-i:m+i)=255;
    Yi = X;
    for j=1:2:kj
        if x == 1
           Zi = imfilter(X,ones(j,j)/j/j);
        else
           Zi = medfilt2(X,[j j]);
        end
        Yi = [Yi;Zi];
    end
    Y = [Y Yi];
end
figure
imshow(Y,[])