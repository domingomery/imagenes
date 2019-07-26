clear all
close all
N = 16;
h = zeros(N,N);
h(1,:) = 1;
for k=1:N-1
    if k==0
        p = 0;
        q = 0;
    else
        p = fix(log(k)/log(2));
        q = k-2^p+1;
    end
    p2 = 2^p;
    p1 = 2^(p/2);

    t0 = (q-1)/p2;
    t1 = (q-0.5)/p2;
    t2 = q/p2;


    for i=0:N-1
        x = i/N;
        if t0<=x && x<t1
            h(k+1,i+1) =  p1;
        end
        if t1<=x && x<t2
            h(k+1,i+1) =  -p1;
        end
    end
end
h = h/sqrt(N);


Hi = [];
for i=1:N
    Hj = [];
    for j=1:N
        Hj = [Hj h(i,:)'*h(j,:)];
    end
    Hi = [Hi;Hj];
end
H = Hi;
imshow(H,[])
hold on
for i=0:N:N^2
        plot([i i]+0.5,[0 N^2]+0.5,'r')
        plot([0 N^2]+0.5,[i i]+0.5,'r')
end        
