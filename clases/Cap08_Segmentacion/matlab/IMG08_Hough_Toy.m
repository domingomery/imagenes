x1 = [0:0.25:1];
y1 = -0.5*x1+0.5;
x2 = [0:0.25:1];
y2 = 0.2*x2+0.1;
x = [x1 x2];
y = [y1 y2];
figure(1);clf
plot(x,y,'o');hold on
pause
th = [0:179]/180*pi;
figure(2);clf
for i=1:length(x)
    p = x(i)*cos(th)+y(i)*sin(th);
    if (i<6)
        figure(2)
        plot([0:179],p)
        figure(1)
        plot(x(i),y(i),'*')
    else
        figure(2)
        plot([0:179],p,'r')
        figure(1)
        plot(x(i),y(i),'r*')
    end
    figure(2)
    axis([0 180 -1 1 ])
    hold on
    pause
end
figure(1)
hold on
plot(x1,y1)
plot(x2,y2,'r')