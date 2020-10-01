# Ejercicio 03: Transformada de Fourier en 1D y 2D

(se puede usar todas las librerias que sean necesarias)

## Problema 1
Estimar la periodicidad en el numero de personas contagiadas diarimente con COVID en Chile en las ultimas 9 semanas. En este [archivo de texto](https://github.com/domingomery/imagenes/blob/master/clases/Cap04_Sistemas_Lineales/ejercicios/covid_chile.txt) se encuentra tabulado el numero de personas contagiadas diariamiente con COVID en Chile. La tabla contiene un vector con 198 numeros, un numero por dia, el primer numero corresponde al numero de personas contagiadas el 04/03/20 y el ultimo numero corresponde al numero de personas contagiadas el 30/09/20. Al graficar todos los datos observamos una peridiocidad evidente en las ultimas semanas (el eje x corresponde a los dias, el eje y corresponde al numero de contagiados por dia). En este ejercicio se pretende estimar el numero de dias es este periodo. Para esto: 1) Tome solo las ultimas 9 semanas (7x9 = 63 ultimos datos) y defina un vector 'y' de 63 elementos. 2) Calcule un vector 'yn' de 63 elementos que corresponde a 'y' sin su media, es decir la media de 'yn' es cero. 3) Calcule la transformada discreta de Fourier de 'yn' y almacenela en la variable 'F'. 4) Grafique el modulo de F en escala logaritmica usando 'log(abs(F)+1)' y observe donde esta el maximo y que significa este maximo. 5) Estime a partir de este maximo en la transformada de Fourier el periodo de la senal 'y'.

Los datos fueron extraidos de [aqui](https://www.ecdc.europa.eu/en/publications-data/download-todays-data-geographic-distribution-covid-19-cases-worldwide).


## Problema 2
Las siguientes imagenes son de 256x256 pixeles. I1 tiene una sinuoside vertical de 16 periodos. I2 tiene usa sinusoide horizontal de 8 periodos. I3 es el promedio de I1 e I2. Calcule la Transformada de Fourier en 2D de cada una de las imagenes y grafique su modulo, si no ve nada, intente mostrar solo los 32x32 pixeles de la esquina superior izquierda de la Transformada de Fourier. Describa en palabras cada una de las 3 graficas y explique por que razon son asi.  

<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap04_Sistemas_Lineales/ejercicios/I1.png" width="400">I1.png

<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap04_Sistemas_Lineales/ejercicios/I2.png" width="400">I2.png

<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap04_Sistemas_Lineales/ejercicios/I3.png" width="400">I3.png


## Problema 3
Las siguientes imagenes son de 256x256 pixeles. P.png es una imagen en la que se ven tres peatones, sin embargo, ha sido alterada con un ruido que tiene la forma sinuosodial de I2.png. El resultado es W.png que ha sido calculado como el promedio de P.png e I2.png. Grafique la Transformada de Fourier en 2D de cada una de las imagenes, pero en esta ocasion emplee una escala logaritmica, es decir calcule Z = log(abs(F)+1), donde F es la  Transformada de Fourier y grafique k*Z donde k = 255/max(Z). Que diferencia existe entre la Transformada de Fourier de P y la de W? (analice los 32x32 pixeles de la esquina superior izquierda de la Transformada de Fourier). Seria posible eliminar el ruido sinuosidal presente en W para recuperar P? Explique como. En este problema no se pretende que realice esta ultima operacion, solo que explique como se podria hacer.

<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap04_Sistemas_Lineales/ejercicios/P.png" width="400">P.png

<img src="https://github.com/domingomery/imagenes/blob/master/clases/Cap04_Sistemas_Lineales/ejercicios/W.png" width="400">W.png



## Entrega Individual (Lu.05/10/20 6:30pm)
El trabajo es en grupo, pero **la entrega es individual**. Cada estudiante debe subir al [Google Classroom](https://classroom.google.com) (codigo del curso: 6xxmqkg) un solo archivo (.m, .py, o .ipynb) que haga todos los problemas. Tratar de entregar lo antes posible (al final de la clase). 
