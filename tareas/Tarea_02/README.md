# Tarea 01: Temporizador

## Enunciado
El objetivo de esta tarea es realizar de manera individual un programa que determine automáticamente el tiempo configurado en el temporizador analógico (Timer). En esta [carpeta](https://github.com/domingomery/imagenes/tree/master/tareas/Tarea_01/imagenes_timer) se encuentran 5 fotografías del timer, que deben ser leídas por un programa y procesadas para determinar automáticamente el número de minutos que indica la manecilla roja. 

Se debe realizar un programa que i) encuentre el timer en la imagen (es necesario segmentarlo del fondo y del marco), ii) realice una corrección geométrica para que el timer se vea como un círculo, iii) encuntre la manecilla roja, iv) estime el ángulo de la manecilla; y v) calcule el tiempo señalado indicando el número de minutos con decimales (es decir si la manecilla esta en la mitad entre el 37 y el 38 se debe indicar que el tiempo del timer es 37.5 minutos). La entrada del programa es la imagen, la salida es el número de minutos del timer.

## Fecha de Entrega
Lunes 26 de Agosto a las 6:30pm

## Informe (20%)
En el informe se evalua calidad del informe, explicaciones, redaccion, ortografia. El informe debe ser un PDF de una sola pagina (una cara en Times New Roman, Espacio Simple, Tamano Carta, Tamano de Letra 10,11 o 12), con margenes razonables. El informe debe estar bien escrito en lenguaje formal, no coloquial ni anecdotico, sin faltas de ortografia y sin problemas de redaccion. El informe debe contener: 1) Motivacion: explicar la relevancia de la tarea. 2) Solucion propuesta: explicar cada uno de los pasos y haciendo referencia al codigo. 3) Experimentos realizados: explicar los experimetos, datos y los resultados obtenidos. 5) Conclusiones: mencionar las conclusiones a las que se llego. Ver [Informe Modelo](https://github.com/domingomery/imagenes/blob/master/tareas/TareaModelo.pdf).

## Solución Propuesta (50%)
A partir del enunciado, se debera implementar una solución en Matlab o Python. El codigo disenado debe ser debidamente comentado y explicado, por favor sea lo más claro posible para entender su solucion, para hacer más fácil la corrección y para obtener mejor nota. Se evalua la calidad del metodo, si el diseno es robusto y rapido para el problema dado, si los experimentos disenados y los datos empleados son adecuados, si el codigo es entendible, limpio, ordenado y bien comentado.

## Resultados Obtenidos (30%)
La nota en este item es 30% x C, donde C es A + B, con A un numero entre 0 y 1 que indica la mejor precision encontrada en el curso y B una constante calculada de tal forma que el mejor resultado en el curso obtenga C = 1. A se define como (A1+A2+...+A5)/5, donde Ai, la precision en la imagen i, se calcula como max(0,(10-Ei)/10) con Ei es el error en minutos en la estimación del tiempo del timer (en caso de que Ei>10 el valor de Ai sera 0). 

## Indicaciones para subir la tarea
La tarea deberá subirse usando la plataforma 'Google Classroom' (código de la clase es "+pzbpqe"). Los estudiantes del curso deben haber recibido una invitación de Google Classrom al correo que tienen en la UC.

## Foro
Hacer comentarios preguntas que se hayan contestado en clases en el [foro](https://github.com/domingomery/imagenes/issues/1).
