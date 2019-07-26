% Example:
%
% Segmentation using MSER (Maximally Stable Extremal Regions)
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

%
close all
i = input('Image: 1 pencase, 2 rice, 3 coins? ');
switch i
    case 1
        X  = imread('X1.png')';   x = 0; % 0: DarkOnBright, 1: BrightOnDark; 2: Both
    case 2
        X = imread('rice.png');  x = 1; % 0: DarkOnBright, 1: BrightOnDark; 2: Both
    case 3
        X = imread('coins.png'); x = 1; % 0: DarkOnBright, 1: BrightOnDark; 2: Both
end
figure(1)
imshow(X,[])
figure(2)

n = size(X,2);
T = round(255.0*(ones(20,1)*(1:n))/n);

I = [X;T];

e = 0.001; % wait time
d = 1;
f = 1;
for s=1:2
    k = 0;
    for t=[0:2:255 254:-2*f:0]
        k = k + 1;
        J = I<t;
        if s==1
            imshow(J(1:d:end,1:d:end))
        else
            E = bwperim(J);
            Bio_edgeview(I(1:d:end,1:d:end),E(1:d:end,1:d:end))
        end
        drawnow
    end
    enterpause
end


[fr,sd,J] = Bim_segmser(X,[5 2500 0.7 0.2 10 x 0]);
figure
imshow(J>0,[])