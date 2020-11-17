%% Proyecto F. de Procesamiento de Imagenes - V.Diaz - 16/12/19
% No funciona Iris: 4,10,11,12,16,19
% No funciona pupila: -

%% Parametros
show_process = 1; % 1: True, 0: False
show_out = 1;     % 1: True, 0: False
filename = 'images/IRIS_0001.png';

%% Leer y esclara imagen

I = imread(filename);

I2 = imcrop(I,[210 75 880 820]); % Cortar imagen
I2 = imresize(I2, 0.5); % Se escala la imagen

[N, M] = size(I2);
centroide = [M/2 N/2];

if show_process
figure, imshow(I2, [])
hold on
plot(centroide(2), centroide(1), 'r*'); % Centro
end
%% Deteccion de bordes
BW1 = edge(I2,'Canny', 0.06); %0.05
if show_process
figure, imshow(BW1, [])
end

%% Filtrar pixeles lejanos del centro
tresh = 190;
BW2 = del_outliers(BW1, centroide, tresh);
if show_process
figure, imshow(BW2, [])
end

%% Quitar regiones pequeñas (limpiar)
BW3 = bwareaopen(BW2, 20);
if show_process
figure, imshow(BW3, [])
end

%% Transformada Hough - Pupila
radios = 30:60; % radios aproximados de la pupila
output = zeros(length(radios), 4);
for i =1:length(radios)
    Accumulator = houghcircle(BW3,radios(i)); % [N*M]
    [max_val, max_id] = max(Accumulator(:));  % mejor centro del circulo
    [y_max,x_max] = ind2sub(size(Accumulator),max_id);
    output(i,:) = [radios(i) x_max y_max  max_val];
end
[~, max_id] = max(output(:,4)); % Se elige el circulo con mejor acumulador
best_circle = output(max_id,:);
centro = [best_circle(2) best_circle(3)];
radio = best_circle(1);

if show_process
Accumulator = houghcircle(BW3,radio); % Mejor acumulador de pupila
figure, imshow(Accumulator, [])
end

%% Transformada Hough - Iris
k = 150; % Valor que bonifica la igualdad de centros (pupila e iris)
radios_iris = 110:155;
output2 = zeros(length(radios_iris), 6);

for i =1:length(radios_iris)
    Accumulator2 = houghcircle(BW3,radios_iris(i));
    [max_val, max_id] = max(Accumulator2(:));
    [y_max,x_max] = ind2sub(size(Accumulator2),max_id);
    diff = round(k / (sqrt((centro(1)-x_max)^2 + (centro(2)-y_max)^2)+2));
    output2(i,:) = [radios_iris(i) x_max y_max  max_val diff max_val+diff];
end
[~, max_id] = max(output2(:,6));
best_circle2 = output2(max_id,:);
centro_iris = [best_circle2(2) best_circle2(3)];
radio_iris = best_circle2(1);

%Accumulator2 = houghcircle(BW3,radio_iris); % Mejor acumulador de iris
%figure, imshow(Accumulator2, [])


%% Volver a la img original
radio_r = radio * 2;
centro_r = centro.*2 + [210 75];
radio_iris_r = radio_iris*2;
centro_iris_r = centro_iris.*2 + [210 75];

%% Parametros del programa
pupil_params = [radio_r radio_r centro_r];
iris_params = [radio_iris_r radio_iris_r centro_iris_r];


%% Show final segmentation
if show_out
f = figure;
imshow(I, [])
hold on
plot(centro_r(1), centro_r(2), 'r*'); % Centro pupil
plot(centro_iris_r(1), centro_iris_r(2), 'b*'); % Centro iris
viscircles(centro_r, radio_r);
viscircles(centro_iris_r, radio_iris_r, 'Color','b');
end

%% Guardar resultados
% filename_out = strcat('Images_segmentadas/Out_', filename([8:end]));
% saveas(f, filename_out)


% END PROGRAM
