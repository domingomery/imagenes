# Tarea 01: Temporizador

## Enunciado
El objetivo de esta tarea es realizar de manera individual un programa que determine automáticamente el tiempo configurado en el temporizador analógico. En esta [carpeta](https://github.com/domingomery/imagenes/tree/master/tareas/Tarea_01/imagenes_reloj) se encuentran 4 fotografías de un temporizador analógico, que deben ser leídas por un programa y procesadas para determinar automáticamente el número de minutos que indica la manecilla roja. 

Se debe realizar un programa que i) encuentre el temporizador en la imagen (es necesario segmentarlo del fondo y del marco), ii) realice una corrección geométrica para que el temporizador se vea como un círculo, iii) encuntre la manecilla roja, iv) estime el ángulo de la manecilla; y v) calcule el tiempo señalado indicando el número de minutos. La entrada del programa es la imagen, la salida es el número de minutos del temporizador.

# Fecha de Entrega
Lunes 26 de Agosto a las 6:30pm

# Informe (20%)
En el informe se evalúa calidad del informe, explicaciones, redacción, ortografía. El informe debe ser un PDF de una sola página (Times New Roman, Espacio Simple, Tamaño Carta, Tamaño de Letra 10,11 ó 12), con márgenes razonables. El informe debe estar bien escrito en lenguaje formal, no coloquial ni anecdótico, sin faltas de ortografía y sin problemas de redacción. El informe debe contener: 1) Motivación: explicar la relevancia de la tarea. 2) Solución propuesta: explicar cada uno de los pasos y haciendo referencia al código. 3) Experimentos realizados: explicar los experimetos, datos y los resultados obtenidos. 4) Conclusiones: mencionar las conclusiones a las que se llegó. Ver [Informe Modelo]()

# Solución Propuesta (50%)
A partir del enunciado, se deberá implementar una solución en Matlab o Python. El código diseñado debe ser debidamente comentado y explicado, por favor sea lo más claro posible para entender su solución, para hacer más fácil la corrección y para obtener mejor nota. Se evalúa la calidad del método, si el diseño es robusto y rápido para el problema dado, si los experimentos diseñados y los datos empleados son adecuados, si el código es entendible, limpio, ordenado y bien comentado.

# Resultados Obtenidos (30%)
La nota en este item es 30% x C, donde C es A + B, con A un número entre 0 y 1 que indica la mejor precisión encontrada en el curso y B una constante calculada de tal forma que el mejor resultado en el curso obtenga C = 1. A se define como (A1+A2+A3+A4)/4, donde Ai, la precisión en la imagen i, se calcula como max(0,(10-Ei)/10) con Ei es el error en minutos en la estimación del tiempo del temporizador (en caso de que Ei>10 el valor de Ai será 0). 



# Indicaciones
La tarea deberá subirse en 
