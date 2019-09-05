# Tarea 02: Filtros en el dominio de Fourier

## Enunciado
El objetivo de esta tarea es realizar de manera individual un programa que determine pueda filtrar imagenes ruidosas usando filtros en el dominio de Fourier. En esta [carpeta](https://github.com/domingomery/imagenes/tree/master/tareas/Tarea_02/imagenes) se encuentran 5 fotografías ruidosas en blanco y negro, que deben ser leídas por un programa y procesadas para filtrar el ruido. 

Se debe realizar un programa que basandose en el espectro de frecuencias en 2D logre eliminar el ruido periodico de las imagens. La entrada del programa es la imagen, la salida es la imagen filtrada. El programa debe ser el mismo para cada imagen, sin embargo los parametros pueden ser distintos y pueden ser fijados manualmente para cada una de las imagenes. Con este fin disene una funcion que se llame FiltroTarea2 que reciba como entrada la imagen ruidosa 'X' y los n parametros p1, p2, ... pn, de esta manera se ejecuta Y = FiltroTarea2(X,p1,p2,..,pn) para obtener la imagen de salida 'Y'. En la tarea se debe especificar cuales son los parametros para cada una de las imagenes.

## Fecha de Entrega
Lunes 30 de Septiembre a las 6:30pm

## Informe (20%)
En el informe se evalua calidad del informe, explicaciones, redaccion, ortografia. El informe debe ser un PDF de una sola pagina (una cara en Times New Roman, Espacio Simple, Tamano Carta, Tamano de Letra 10,11 o 12), con margenes razonables. El informe debe estar bien escrito en lenguaje formal, no coloquial ni anecdotico, sin faltas de ortografia y sin problemas de redaccion. El informe debe contener: 1) Motivacion: explicar la relevancia de la tarea. 2) Solucion propuesta: explicar cada uno de los pasos y haciendo referencia al codigo. 3) Experimentos realizados: explicar los experimetos, datos y los resultados obtenidos. 5) Conclusiones: mencionar las conclusiones a las que se llego. Ver [Informe Modelo](https://github.com/domingomery/imagenes/blob/master/tareas/TareaModelo.pdf).

## Solución Propuesta (50%)
A partir del enunciado, se debera implementar una solución en Matlab o Python. El codigo disenado debe ser debidamente comentado y explicado, por favor sea lo más claro posible para entender su solucion, para hacer más fácil la corrección y para obtener mejor nota. Se evalua la calidad del metodo, si el diseno es robusto y rapido para el problema dado, si los experimentos disenados y los datos empleados son adecuados, si el codigo es entendible, limpio, ordenado y bien comentado.

## Resultados Obtenidos (30%)
La nota en este item es 30% x C, donde C es A + B, con A un numero entre 0 y 1 que indica el valor 1- ErrorPromedio (el profesor dispone de las imagenes originales sin ruido) y B una constante calculada de tal forma que el mejor resultado en el curso obtenga C = 1.

## Indicaciones para subir la tarea
La tarea deberá subirse usando la plataforma 'Google Classroom' (código de la clase es "+pzbpqe" > Ver Tarea 2). Los estudiantes del curso deben haber recibido una invitación de Google Classrom al correo que tienen en la UC.

## Foro
Hacer comentarios preguntas que se hayan contestado en clases en el [foro](https://github.com/domingomery/imagenes/issues/2).
