% Example:
%
% Visual perception of gray regions II
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

close all

i = input('background? 1: black, 2: white, 3: degrade: ');
switch i
    case 1
        Io = zeros(180,512);
    case 2
        Io = 255*ones(180,512);
    case 3
        Io = ones(180,1)*fix((0:511)/2);
end

Io = uint8(Io);

i1 = 32:3:480;
i2 = i1(end:-1:1);
while(1)
    for i=[i1 i2]
        I = Io;
        I(128-16:128+16,i-16:i+16)=128;
        imshow(uint8(I))
        title('the gray-value of the square is 128!')
        drawnow
    end
end
