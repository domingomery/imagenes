# Proyecto: Segmentacion de Iris

## Enunciado
El objetivo de este proyecto es segmentar el iris de una imagen tomada de un ojo humano. La segmentación consiste en encontrar el borde externo del iris (ver linea verde en la figura) y el borde de la pupila (ver linea roja en la figura).

<img src="https://github.com/domingomery/imagenes/blob/master/proyecto/diagram.png" width="600">

Cada uno de los bordes encontrados debe ser aproximado a una elipse horizontal de 4 parametros: eje horizontal (a), eje vertical (b), centro (x,y) tal como se muestra en la siguiente figura:

<img src="https://github.com/domingomery/imagenes/blob/master/proyecto/coordinates.png" width="600">
          
Para este proyecto se debe probar el metodo propuesto en las 20 imagenes disponibles en esta [carpeta](https://github.com/domingomery/imagenes/tree/master/proyecto/images). Una visuaLizacion de las 20 imagenes y sus segmentaciones ideales se muestran a continuacion:

<img src="https://github.com/domingomery/imagenes/blob/master/proyecto/inputs.png" width="600">
<img src="https://github.com/domingomery/imagenes/blob/master/proyecto/outputs.png" width="600">

El algoritmo disenado debe entregar 8 parametros por cada imagen: los cuatro parametros de la elipse del borde externo del iris y los cuatro parametros de la elipse del borde de la pupila. Como referencia se entregan los parametros "ideales" obtenidos de una segmentacion manual para el [iris](https://github.com/domingomery/imagenes/tree/master/proyecto/iris.txt) y para la [pupila](https://github.com/domingomery/imagenes/tree/master/proyecto/pupil.txt). Estas tablas de 20 x 4 elementos contienen respectivamente los 4 parametros (a,b,x,y) para cada una de las 20 imagenes.  

Se debe entregar adicionalmente el error de segmentacion en el iris y en la pupila. Para esto debe calcular el error promedio en pixeles de cada uno de los 8 parametros con respecto a los parametros "ideales".

IMPORTANTE: En este proyecto, las coordenadas (x,y) del primer pixel de una imagen son (1,1). Es decir se sigue el estandar Matlab y no Python. Las personas que trabajen en Python deberan sumar 1 a las coordenadas (x,y) obtenidas. 

Esta permitido usar librerias clasicas de procesamiento de imagenes, pero no de machine learning. Todo lo que se use deben saber explicarlo.

## Fecha de Entrega
Semana del 2 al 6 de Diciembre de 2019: Horario a definir con el profesor.

## Modalidad de Trabajo
Grupos de 2 personas (sin excepcion)

## Presentacion
La presentacion  final del proyecto consiste en una reunion de todos los integrantes del grupo conmigo en mi oficina. La reunión dura 45 minutos y se hara entre 9am y 6pm en un horario definido por el profesor. La puntualidad en la presentación será considerada en la nota.

La reunion conmigo de 45 minutos consta de una presentacion tipo powerpoint, una demo y preguntas de la materia del curso.

- La presentacion tipo powerpoint debe incluir 

1) Introduccion (relevancia de este tema, en que consiste el proyecto, etc.), 

2) Revision del [estado del arte](https://scholar.google.cl/scholar?&q=iris+segmentation), 

3) Metodo propuesto en detalle (con un diagrama de bloques claro con todos los pasos y resultados intermedios como el de este [ejemplo](https://github.com/domingomery/imagenes/blob/master/proyecto/diagram_example.png)), 

4) Resultados obtenidos, 

5) Donclusiones (que funciona bien, que funciona mal, que se puede mejorar, dificultades, trabajo futuro, que se aprendioo, etc.) y 

6) Demo: La demo consiste en que ustedes presenten el software funcionando de la mejor manera posible (sin improvisaciones), deben planear muy bien que van a mostrar con buenos experimentos. Ademas deben ser capaces de detectar el iris en 5 imagenes nuevas que el profesor les proporcionara en un pendrive en formato png.

- En la presentacion habra preguntas orientadas tanto al proyecto como a cuanto entienden de la materia del curso (examen oral). Esto me servira para poner notas individuales a cada integrante del grupo.

## Nota
La nota del proyecto se calcula de la siguiente manera: 50% presentacion, %25 resultados, 25% examen oral. En la nota se premia el esfuerzo mas que los resultados, tendra una mejor nota una persona que pruebe e invente metodos con resultados no tan buenos, que una persona que prueba/encuentre una sola funcion con resultados buenos.

## Foro
Hacer comentarios preguntas que se hayan contestado en clases en el [foro](https://github.com/domingomery/imagenes/issues/4).
