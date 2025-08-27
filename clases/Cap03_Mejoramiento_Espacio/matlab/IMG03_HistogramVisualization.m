% Example:
%
% Histogram visualization 
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

% close all
% X  = imread('X1.png');
X  = imread('rice.png');

X = double(X);
for i=1:256
    X(i,:) = X(i,:) - min(X(i,:));
end
X = uint8(X);
X = Bim_lin(X);


% X  = imread('coins.png'); 

figure(1);clf;setw
imshow(X,[])

n = size(X,2);
T = round(255.0*(ones(20,1)*(1:n))/n);

I = [X;T];

h = zeros(256,1);
k = 1;
figure(2);clf;setw
figure(3);clf;setw
for t=0:255
    J = imdilate(I==t,ones(3,3));
    h(t+1) = sum2(X==t);
    figure(2)
    Bio_edgeview(I(1:k:end,1:k:end),J(1:k:end,1:k:end))
    figure(3)
    imhistp(X(X<=t));
    axis([1 255 0 2000])
    drawnow
    if t==0
        pause
    end
end
