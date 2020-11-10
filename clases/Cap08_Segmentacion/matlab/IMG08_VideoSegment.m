clt
load videoseq

X = double(X)/255;

n = size(X,3);
m = 0;

im = [];
jm = [];

R = zeros(size(X,1),size(X,2));
E = R;
for i=1:n;
    figure(1)
    imshow(X(:,:,i));
    figure(2)
    clf
    imshow(X(:,:,i));
    hold on
    D = abs(X(:,:,i)-X(:,:,1))>0.05;
    D = bwareaopen(D,100);
    figure(3)
    imshow(D);
    [ii,jj] = find(D==1);
    if length(ii) > 50
        m = m+1;
        R = R+X(:,:,i);
        P = bwperim(D);
        E = or(P,E);
        i1 = min(ii); i2 = max(ii);
        j1 = min(jj); j2 = max(jj);
        figure(2)
        plot([j1 j1 j2 j2 j1],[i1 i2 i2 i1 i1],'r','Linewidth',2)
        im = [im;mean(ii)];
        jm = [jm;mean(jj)];
        pause(0)
    end
    pause(0);
end

figure(4)
clf
% imshow(R,[])
Bio_edgeview(R,E,[1 0 0],2);
hold on
plot(jm,im,'g','Linewidth',2)


