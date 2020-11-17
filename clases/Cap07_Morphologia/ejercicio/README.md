# Ejercicio 07: Procesamiento Morfológico y Segmentación

(se puede usar todas las librerias que sean necesarias)

## Problema 1
En este problema se desea segmentar el sol y la gaviota de la siguiente imagen:
<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap07_Morphologia/ejercicio/atardecer.png" width="600"> atardecer.png

El output debe ser una imagen en la que se muestre la segmentación, aquí hay un ejemplo del resultado:
<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap07_Morphologia/ejercicio/atardecer_out.png" width="600"> atardecer_out.png

Para la solución se debe usar operaciones morfológicas. Se recomienda usar un filtro mediana para eliminar la gaviota, y una erosión para eliminar el sol. La segmentación se obtiene mediante restas de la imagen original con las imagenes filtradas y un umbral adecuado para la gaviota y otro para el sol. Soluciones que no consideren operaciones morfológicas no serán consideras.


## Problema 2:
En este problema se debe realizar un gradiente morfológico de la siguiente imagem. 
<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap07_Morphologia/ejercicio/tazmania.png" width="600"> tazmania.png

El output debe ser una imagen en la que se muestre el valor abosluto del gradiente morfológico, aquí hay un ejemplo del resultado:
<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap07_Morphologia/ejercicio/tazmania_out.png" width="600"> tazmania_out.png

[opcional] Realizar el gradiente con operadores lineales y comparar (visualmente) el gradiente obtenido con el gradiente morfológico. El gradiente con operador lineal se calcula usando dos máscaras: [-1 0 1] para obtener Gx, el gradiente en x; [-1 0 1]' para obtener Gy, el gradiente en y. El gradiente de la imagen puede calcularse como la magnitud de ambos gradientes: sqrt(Gx^2+Gy^2).   


## Problema 3
En este problema se desea segmentar las gotas medias y grandes de la siguiente imagen:
<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap07_Morphologia/ejercicio/gotas.png" width="600"> gotas.png

El output debe ser una imagen en la que se muestre la segmentación, aquí hay un ejemplo del resultado (no importa que la gota no sea segmentada completamente):

<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap07_Morphologia/ejercicio/gotas_out.png" width="600"> gotas_out.png

Para la solución se debe usar operaciones morfológicas. Se recomienda usar un filtro TopHat para eliminar la iluminación irregular, luego usar un umbral para detectar las zonas más claras y por último un filtro morfológico que elimine las regiones muy pequeñas. Soluciones que no consideren operaciones morfológicas no serán consideras.


Para mentes curiosas: Las fotos utilizadas en estos problemas, son versiones en blanco y negro y a veces recortadas de las siguientes fotos a color.

* Foto original Problema 1: https://flic.kr/p/2iNWsjg
* Foto original Problema 2: https://flic.kr/p/2hWGUXA
* Foto original Problema 3: https://flic.kr/p/2hQ82vH

En los ejercicios usar las versiones proporcionadas en blanco y negro, no usar las versiones originales a color.


## Entrega Individual (Ma.17/11/20 6:30pm)
El trabajo es en grupo, pero **la entrega es individual**. Cada estudiante debe subir al [Google Classroom](https://classroom.google.com) (codigo del curso: 6xxmqkg) un solo archivo (.m, .py, o .ipynb) que haga todos los problemas. Las explicaciones incluyalas como comentarios en el codigo. Tratar de entregar lo antes posible (al final de la clase). 
