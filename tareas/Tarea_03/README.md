


# Tarea 03: Restauración de imágenes

## Enunciado
El objetivo de esta tarea es aprender y aplicar tecnicas de restauracion de imagenes que hayan sido degradadas en procesos simulados y en procesos reales.

**A) Proceso simulado (movimiento vertical)**
 En esta parte de la tarea, se debe realizar 5 pasos:
 
 * Cargar la imagen original (**F**): [santiago512](https://github.com/domingomery/imagenes/blob/master/tareas/Tarea_03/santiago512.png)
 * Simular un proceso de simulacion de movimiento vertical: **G** = _FuncionDegradacionVert_(**F**,n), donde n es el movimiento vertical en pixeles.

 * Encontar analiticamente la matriz **A** usando [el metodo de regularizacion visto en clase](https://github.com/domingomery/imagenes#clase-19-ma-20-oct-2020) para este movimiento vertical, tal que **F**_s_ = **AG**, donde **F**_s_ es la imagen resturada. En esta solucion, utilice una matriz de regularizacion **W** general.
 
* Para n = 57, encuentre la imagen restaurada usando **W** = **I** y calcule el error promedio (*)


![equation](http://latex.codecogs.com/gif.latex?a^2 = b^2 \)




(*) El error promedio se calcula como el promedio de la diferencia absoluta normalizada de todos los pixeles, es decir:

ERR =  Sum |F(i,j)-F_s_(i,j)|


 restaurar una imagen que fue degradada a partir de un movimiento horizontal real . Como referencia se cuenta con una imagen sin degradacion [image_sharp](https://github.com/domingomery/imagenes/blob/master/tareas/Tarea_03/image_sharp.png). En esta tarea se debe implementar 






**C) Proceso real (movimiento horizontal)**

 En esta parte de la tarea, se debe restaurar una imagen que fue degradada a partir de un movimiento horizontal real [image_blur_01](https://github.com/domingomery/imagenes/blob/master/tareas/Tarea_03/image_blur_01.png). Como referencia se cuenta con una imagen sin degradacion [image_sharp](https://github.com/domingomery/imagenes/blob/master/tareas/Tarea_03/image_sharp.png). En esta tarea se debe implementar y probar al menos dos metodos de restauracion distintos. Obviamente, la imagen de referencia no podra ser usada en los algoritmos, pero si puede ser usada como referencia para determinar el proceso de degradacion. Esta permitido rotar, escalar o hacer una transformacion de perspectiva de la imagen degradada de manera manual antes de aplicar el algoritmo de restauracion. Esta permitido el uso de funciones de restauracion implementadas en librerias de Matlab o Python, siempre y cuando la entiendas bien y la puedas explicar en el informe.



## Fecha de Entrega
Miercoles 11 de Noviembre a las 6:30pm

## Informe (20%)
En el informe se evalúa calidad del informe, explicaciones, redacción, ortografía. El informe debe ser un PDF de una sola página (Times New Roman, Espacio Simple, Tamaño Carta, Tamaño de Letra 10,11 ó 12), con márgenes razonables. El informe debe estar bien escrito en lenguaje formal, no coloquial ni anecdótico, sin faltas de ortografía y sin problemas de redacción. El informe debe contener: 1) Motivación: explicar la relevancia de la tarea. 2) Solución propuesta: explicar cada uno de los pasos y haciendo referencia al código. 3) Experimentos realizados: explicar los experimetos, datos y los resultados obtenidos. 4) Conclusiones: mencionar las conclusiones a las que se llegó. Ver [Informe Modelo](https://github.com/domingomery/imagenes/blob/master/tareas/TareaModelo.pdf)

## Solución Propuesta (50%)
A partir del enunciado, se deberá implementar una solución en Matlab o Python. El código diseñado debe ser debidamente comentado y explicado, por favor sea lo más claro posible para entender su solución, para hacer más fácil la corrección y para obtener mejor nota. Se evalúa la calidad del método, si el diseño es robusto y rápido para el problema dado, si los experimentos diseñados y los datos empleados son adecuados, si el código es entendible, limpio, ordenado y bien comentado.

## Resultados Obtenidos (30%)
Los resultados seran evaluados de manera subjetiva de acuerdo a la calidad de las imagenes restauradas (con nota de 0 a 100). Para esto se obtendra un promedio de las calidades que determinen los ayudantes. La nota obtenida de los resultados se calcula como Q/100 x C, donde C es una constante que hace que la mejor calidad obtenida en esta tarea tenga como nota 30%. 


## Indicaciones para subir la tarea
La tarea deberá subirse usando la plataforma 'Google Classroom' (código de la clase es el pzbpqe). Los estudiantes del curso deben haber recibido una invitación de Google Classrom al correo que tienen en la UC.

## Foro
Para dudas, ver el [foro](https://github.com/domingomery/imagenes/issues/11) de esta tarea.
