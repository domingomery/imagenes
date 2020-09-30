# Ejercicio 03: Transformada de Fourier en 1D y 2D

(se puede usar todas las librerias que sean necesarias)

## Problema 1
Estimar la periodicidad en el numero de personas contagiadas diarimente con COVID en Chile en las ultimas 9 semanas. En este [archivo de texto](https://github.com/domingomery/imagenes/blob/master/clases/Cap04_Sistemas_Lineales/ejercicios/covid_chile.txt) se encuentra tabulado el numero de personas contagiadas diariamiente con COVID en Chile. La tabla contiene un vector con 198 numeros, un numero por dia, el primer numero corresponde al numero de personas contagiadas el 04/03/20 y el ultimo numero corresponde al numero de personas contagiadas el 30/09/20. Al graficar todos los datos observamos una peridiocidad evidente en las ultimas semanas (el eje x corresponde a los dias, el eje y corresponde al numero de contagiados por dia). En este ejercicio se pretende estimar de cuantos dias es este periodo. Para esto: 1) Tome solo las ultimas 9 semanas (7x9 = 63 ultimos datos) y defina un vector 'y' de 63 elementos. 2) Calcule un vector 'yn' de 63 elementos que corresponde a 'y' sin su media, es decir la media de 'yn' es 0. 3) Calcule la transformada discreta de Fourier de 'yn' y almacenela en la variable 'Yn'. 4) Grafique el modulo de Yn en escala logaritmica usando 'log(abs(Yn)+1)' y observe donde esta el maximo y que significa este maximo. 5) Estime a partir de este maximo en la transformada de Fourier el periodo de la senal 'y'.

Los datos fueron extraidos de [aqui](https://www.ecdc.europa.eu/en/publications-data/download-todays-data-geographic-distribution-covid-19-cases-worldwide).


## Problema 2
Las siguientes imagenes son de 256x256 pixeles.

<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap04_Sistemas_Lineales/ejercicios/I1.png" width="400">I1.png

<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap04_Sistemas_Lineales/ejercicios/I2.png" width="400">I2.png

<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap04_Sistemas_Lineales/ejercicios/I3.png" width="400">I3.png

<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap04_Sistemas_Lineales/ejercicios/I4.png" width="400">I4.png





## Entrega Individual (Lu.05/10/20 6:30pm)
El trabajo es en grupo, pero **la entrega es individual**. Cada estudiante debe subir al [Google Classroom](https://classroom.google.com) (codigo del curso: 6xxmqkg) un solo archivo (.m, .py, o .ipynb) que haga todos los problemas. Tratar de entregar lo antes posible (al final de la clase). 
