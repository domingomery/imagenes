n = 512;

f = zeros(512,512);

for j=1:32
    
    ps = '+';
    
    if and(j>=1,j<=8)
        p = j;
        q = 0;
        for k=1:n
            for l=1:n
                f(k,l) = sin(2*p*pi*k/n);
            end
        end
    end
    if and(j>=9,j<=16)
        q = j-8;
        p = 0;
        for k=1:n
            for l=1:n
                f(k,l) = sin(2*q*pi*l/n);
            end
        end
    end
    if and(j>=17,j<=24)
        p = j-16;
        q = 3;
        for k=1:n
            for l=1:n
                f(k,l) = sin(2*p*pi*k/n) + sin(2*q*pi*l/n);
            end
        end
    end
    if and(j>=25,j<=32)
        ps = '*';
        p = j-24;
        q = 3;
        i = sqrt(-1);
        for k=1:n
            for l=1:n
                f(k,l) = real(exp(-i*2*pi*k*p/n)*exp(-i*2*pi*l*q/n));

            end
        end
    end
    
%     if p==0
%         fprintf('f(k,l) = sin(%d*2*pi*l/n)\n',q)
%     end
%     if q==0
%         fprintf('f(k,l) = sin(%d*2*pi*k/n)\n',p)
%     end
%     if and(p>0,q>0)
%         fprintf('f(k,l) = sin(%d*2*pi*k/n) %s sin(%d*2*pi*l/n)\n',p,ps,q)
%     end
    
    figure(1)
    imshow(f,[]);
    
    F = fft2((f));
    m = 32;
    Fn = log(abs(F(1:m,1:m)+1));
    figure(2)
    mesh(Fn')
    view(50,50)
    pause
end




