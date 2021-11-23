% Example:
%
% Segmentacion por movimiento, sustraccion de fondos
%
% (c) Domingo Mery (2015) - http://dmery.ing.puc.cl
%     Christian Pieringer


clt

vidObj = VideoReader('secuencia_color.mov');

vidObj.CurrentTime = 0.5;

op = input('1: display, 2: edges, 3: red map, 4: median? ');



Z = zeros(288,360);
frame1 = 0;

alpha = 0.05;
t = 0;
% F is frame in t
% B is frame in t-1

while hasFrame(vidObj)
    t = t+1;
    I = readFrame(vidObj);
    I = imresize(I,3);
    F = double(rgb2gray(I)); 
    Ir = I(:,:,1);
    Ig = I(:,:,2);
    Ib = I(:,:,3);
    if frame1 == 0
        B = double(rgb2gray(I));
        frame1 = 1;
        if op==4;
            G(:,:,1) = B; % buffer circular
        end
    else
        switch op
            case 1
                imshow(uint8(I));
            case 2
                D = abs(F-B);
                B = F;
                imshow(log(D+1),[])
            case 3
                B = alpha*F+(1-alpha)*B; % F is frame in t | B is frame in t-1
                C = abs(F-B)>70;
                C = imclose(C, strel('disk', 3, 4) );
                C = imfill(C,'holes');
                ii = find(C==1);
                Ir(ii) = 255;
                I(:,:,1) = Ir;
                imshow(uint8(I))
            case 4
                G(:,:,t) = F;
                B = median(G, 3);
                C = bwareaopen(abs(F-B)>30,20);
                imshow(uint8(F.*C));
        end
    end
    pause(1/vidObj.FrameRate);
end


