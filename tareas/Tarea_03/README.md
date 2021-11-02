


# Tarea 03: Restauración de imágenes

## Enunciado
El objetivo de esta tarea es aprender y aplicar técnicas de restauración de imágenes que hayan sido degradadas en procesos tanto simulados como en procesos reales.

**A) Proceso simulado (movimiento vertical con aceleración lineal)**

El proceso de degradación ha sido producido con un movimiento vertical cuya función de degradación de `n=2m-1` pixeles está definida como:

`h = [ 1, 2, 3, ...,   m-1, m, m-1, ..., 3, 2, 1 ]/a`, escogiendo `a` de tal forma que la sumatoria de los elementos de `h` es uno.

En esta parte de la tarea, ese debe realizar 6 pasos:
 
A-1) Cargar la imagen original (**F**) de M filas: [parinacota.png](https://github.com/domingomery/imagenes/blob/master/tareas/Tarea_03/parinacota.png)

A-2) Simular la imagen degaradada (**G**) de N filas, a partir de la imagen **F** y la máscara `h`. Usar una función de este tipo: 
 
 **G** = _FuncionDegradacionVert_(**F**,h) = **HF**, 
 
 donde **H** es una matriz de `N x M`, y `h` es la función de degradación del movimiento vertical definida más arriba. Para esta simulación use `m=17`.

A-3) Usando [el método de regularización visto en clase](https://github.com/domingomery/imagenes#clase-18-ma-26-oct-2021), encontar analíticamente la matriz **A** para este movimiento vertical, tal que 
 
 **F**_*_ = **AG**, 
 
 donde **F**_*_ es la imagen resturada. En esta solución, utilice una matriz de regularización **W** general.
 
A-4) Encuentre la imagen restaurada usando el criterio que minimiza la norma de cada columna restaurada. Calcule el error promedio, ERR (*).

A-5) Encuentre la imagen restaurada usando el criterio MINIO, es decir que la norma de la diferencia entre los primeros N elementos de cada columna restaurada y la columna degradada sea minima. Calcule el error promedio, ERR (*).

A-6) Encuentre la imagen restaurada usando el criterio de minimizar las frecuencias altas de la columna restuarada. Para este caso utilice la transformada discreta de cosenos (DCT) y un filtro Gaussiano para escoger las frecuencias de la DCT. Calcule el error promedio, ERR (*).


( * ) Para estimar el error promedio, ERR, calcule la matriz **E** = | **F** - **F**_*_ | / 255 x 100, y promedie todos sus elementos, donde |x| es el valor absoluto de x.


**B) Proceso simulado (desenfoque con máscara Gaussiana)**

 En esta parte de la tarea, se debe restaurar una imagen que fue degradada a partir de una convolución con una máscara Gaussiana de 7x7 [gaussmask7x7.npy](https://github.com/domingomery/imagenes/blob/master/tareas/Tarea_03/gaussmask7x7.npy). Para la solución se debe usar el método de regularización visto en la [clase](https://github.com/domingomery/imagenes#clase-20-ma-02-nov-2021) de la siguiente manera:

B-1) Cargar la imagen original (**F**) de pixeles: [tree.png](https://github.com/domingomery/imagenes/blob/master/tareas/Tarea_03/tree.png).

B-2) Degrade la imagen con la máscara Gaussiana definida más arriba.

B-3) Diseñe una función llamada `restaura60` para restaurar porciones de 60x60 pixeles de la imagen degradada.

B-4) Repita el paso anterior barriendo el total de la imagen degradada en porciones de 60x60 para obtener la imagen restaurada total.

B-5) Calcule el error promedio usando la definicion (*) del ejercicio A. 


**C) Proceso real (lejanía)**

 En esta parte de la tarea, se debe restaurar una imagen que fue tomada a una gran distancia, de tal forma que los detalles se perdieron [image_blur.png](https://github.com/domingomery/imagenes/blob/master/tareas/Tarea_03/image_blur.png). Como referencia se cuenta con una imagen sin degradacion, tomada de cerca [image_sharp.png](https://github.com/domingomery/imagenes/blob/master/tareas/Tarea_03/image_sharp.png). En esta tarea se debe implementar y probar al menos dos métodos de restauración distintos (se desea poder leer bien el texto de la foto). Obviamente, la imagen de referencia no podrá ser usada en los algoritmos, pero si puede ser usada como referencia para determinar el proceso de degradación. Esta permitido rotar, escalar o hacer una transformacion de perspectiva de la imagen degradada y/o de la imagen sin degradacion  de manera manual antes de aplicar el algoritmo de restauración. Está permitido el uso de funciones de restauración implementadas en librerías Python, siempre y cuando Ud entienda bien cómo funciona y pueda explicar correctamente en el informe.



## Fecha de Entrega
Ver calendario de Google Classroom

## Informe (20%)
En el informe se evalúa calidad del informe, explicaciones, redacción, ortografía. El informe debe ser un PDF de una sola página (Times New Roman, Espacio Simple, Tamaño Carta, Tamaño de Letra 10,11 ó 12), con márgenes razonables. El informe debe estar bien escrito en lenguaje formal, no coloquial ni anecdótico, sin faltas de ortografía y sin problemas de redacción. El informe debe contener: 1) Motivación: explicar la relevancia de la tarea. 2) Solución propuesta: explicar cada uno de los pasos y haciendo referencia al código. 3) Experimentos realizados: explicar los experimetos, datos y los resultados obtenidos. 4) Conclusiones: mencionar las conclusiones a las que se llegó. Ver [Informe Modelo](https://github.com/domingomery/imagenes/blob/master/tareas/TareaModelo.pdf)

## Solución Propuesta (50%)
A partir del enunciado, se deberá implementar una solución en Matlab o Python. El código diseñado debe ser debidamente comentado y explicado, por favor sea lo más claro posible para entender su solución, para hacer más fácil la corrección y para obtener mejor nota. Se evalúa la calidad del método, si el diseño es robusto y rápido para el problema dado, si los experimentos diseñados y los datos empleados son adecuados, si el código es entendible, limpio, ordenado y bien comentado.

## Resultados Obtenidos (30%)
Los resultados seran evaluados de manera subjetiva de acuerdo a la calidad de las imagenes restauradas (con nota de 0 a 100). Para esto se obtendra un promedio de las calidades que determinen los ayudantes. La nota obtenida de los resultados se calcula como Q/100 x C, donde C es una constante que hace que la mejor calidad obtenida en esta tarea tenga como nota 30%. 


## Indicaciones para subir la tarea
La tarea deberá subirse usando la plataforma 'Google Classroom' (código de la clase es el "6xxmqkg"). Los estudiantes del curso deben haber recibido una invitación de Google Classrom al correo que tienen en la UC.

## Foro
Para dudas, ver el [foro](https://github.com/domingomery/imagenes/issues/14) de esta tarea.
