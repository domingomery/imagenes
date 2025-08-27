close all
I = imread('pout.tif');
subplot(2,2,1);imshow(I);title('input')
J = I;

subplot(2,2,2);imhistp(I)

while (1)
    Jd = double(J);


    subplot(2,2,3);imshow(J);title('output')

    subplot(2,2,4);imhistp(J)

    p = fix(ginput(2));


    x = p(:,1);


    if x(1) > x(2)

        ii = find(Jd<x(1));

        % x(1) > x(1)
        % min  > x(2)

        xmin = min2(Jd(ii));

        m = (x(2)-x(1))/(xmin-x(1));

        b = x(1)-m*x(1);
        
        Jd(ii) = Jd(ii)*m + b;

    else

        ii = find(Jd>x(1));


        % x(1) > x(1)
        % max  > x(2)

        xmax = max2(Jd(ii));

        m = (x(2)-x(1))/(xmax-x(1));

        b = x(1)-m*x(1);
        
        Jd(ii) = Jd(ii)*m + b;

    end


    Jd(Jd<0) = 0;
    Jd(Jd>255) = 255;

    Jd = fix(Jd);

    J = uint8(Jd);


end