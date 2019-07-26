disp('                        1209 Hz   1336 Hz   1477 Hz')
disp('                       _ _ _ _ _ _ _ _ _ _ _ _ _ _ _')
disp('                      |         |         |         ')
disp('                      |         |   ABC   |   DEF   |')
disp('              697 Hz  |    1    |    2    |    3    |')
disp('                      |_ _ _ _ __ _ _ _ __ _ _ _ _ _')
disp('                      |         |         |         ')
disp('                      |   GHI   |   JKL   |   MNO   |')
disp('              770 Hz  |    4    |    5    |    6    |')
disp('                      |_ _ _ _ __ _ _ _ __ _ _ _ _ _')
disp('                      |         |         |         ')
disp('                      |   PRS   |   TUV   |   WXY   |')
disp('              852 Hz  |    7    |    8    |    9    |')
disp('                      |_ _ _ _ __ _ _ _ __ _ _ _ _')
disp('                      |         |         |         ')
disp('                      |         |         |         |')
disp('              941 Hz  |    *    |    0    |    #    |')
disp('                      |_ _ _ _ __ _ _ _ __ _ _ _ _ _')


symbol = {'1','2','3','4','5','6','7','8','9','*','0','#'};
lfg = [697 770 852 941]; % Low frequency group
hfg = [1209 1336 1477];  % High frequency group
f  = [];
for c=1:4,
    for r=1:3,
        f = [ f [lfg(c);hfg(r)] ];
    end
end
f'
Fs  = 8000;       % Sampling frequency 8 kHz
N = 800;          % Tones of 100 ms
t   = (0:N-1)/Fs; % 800 samples at Fs
pit = 2*pi*t;

tones = zeros(N,size(f,2));
for toneChoice=1:12,
    % Generate tone
    tones(:,toneChoice) = sum(sin(f(:,toneChoice)*pit))';
    % Plot tone
    subplot(4,3,toneChoice),plot(t*1e3,tones(:,toneChoice));
    title(['Symbol "', symbol{toneChoice},'": [',num2str(f(1,toneChoice)),',',num2str(f(2,toneChoice)),']'])
    set(gca, 'Xlim', [0 25]);
    ylabel('Amplitude');
    if toneChoice>9, xlabel('Time (ms)'); end
end
set(gcf, 'Color', [1 1 1], 'Position', [1 1 1280 1024])
annotation(gcf,'textbox', 'Position',[0.38 0.96 0.45 0.026],...
    'EdgeColor',[1 1 1],...
    'String', '\bf Time response of each tone of the telephone pad', ...
    'FitHeightToText','on');

it = input('ingrese numero telefonico( ej. [4 3 2 9 0 8 9 0 9 0 ]):');
for i=it,
    if i==0
        j = 11;
    else
        j = i;
    end
    m = max(tones(:,j));
    p = audioplayer(tones(:,j)/m,Fs);
    play(p)
    pause(0.5)
end
