n = 1000;
t = 1:n;

for j=1:16
    
    switch j
        case 1
            st = 'sin(t/n*2*pi)';
        case 2
            st = '0.3 + sin(t/n*2*pi)';
        case 3
            st = '0.6 + 0.75*sin(t/n*2*pi)';
        case 4
            st = 'sin(t/n*2*pi)';
        case 5
            st = 'sin(2*t/n*2*pi)';
        case 6
            st = 'sin(4*t/n*2*pi)';
        case 7
            st = 'sin(8*t/n*2*pi)';
        case 8
            st = 'sin(12*t/n*2*pi)';
        case 9
            st = '0.5*sin(8*t/n*2*pi)';
        case 10
            st = '0.3*sin(t/n*2*pi) + 0.4*sin(8*t/n*2*pi)';
        case 11
            st = '0.8*sin(t/n*2*pi) + 0.4*sin(8*t/n*2*pi)';
        case 12
            st = '0.8*sin(t/n*2*pi) + 0.2*sin(4*t/n*2*pi) + 0.4*sin(8*t/n*2*pi)';
        case 13
            st = 'sin(t/n*2*pi) + 0.2*sin(12*t/n*2*pi)';
        case 14
            st = 'sin(t/n*2*pi) + 0.2*sin(8*t/n*2*pi) + 0.15*sin(12*t/n*2*pi)';
        case 15
            st = 'sin(t/n*2*pi)+ 0.2*sin(8*t/n*2*pi) + 0.15*sin(9*t/n*2*pi) + 0.1*sin(10*t/n*2*pi) + 0.05*sin(11*t/n*2*pi)';
        case 16
            st = '0.4 + sin(t/n*2*pi)+ 0.2*sin(8*t/n*2*pi) + 0.15*sin(9*t/n*2*pi) + 0.1*sin(10*t/n*2*pi) + 0.05*sin(11*t/n*2*pi)';
    end
    
    disp([num2str(j) ': f(t) = ' st]);
 
    y = eval(st);
    
    figure(1); clf;
    
    subplot(1,2,1);
    plot(t,y,'linewidth',2);
    title('f(t)');xlabel('t');
    axis([0 n, -2 2]);
    
    subplot(1,2,2);
    bar(abs(fft(y))/n);
    ax=axis;ax(2)=15;ax(4) = 1.1;axis(ax);
    title('|F(w)|');xlabel('w');
    
    pause
end