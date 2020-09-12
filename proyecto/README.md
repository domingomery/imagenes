# Proyecto: Segmentacion de Lunares

## Enunciado
El objetivo de este proyecto es segmentar el lunar que esta presente en una imagen dermatoscopica de la base de datos HAM10000(*). La segmentación consiste en encontrar la imagen binaria que contiene el lunar.

<img src="https://github.com/domingomery/imagenes/blob/master/proyecto/diagram.png" width="600">
          
Para este proyecto se debe probar el metodo propuesto en las 50 imagenes con sus correspondientes segementaciones ideales disponibles en esta [carpeta](https://github.com/domingomery/imagenes/tree/master/proyecto/images). Una visuaLizacion de algunas de las imagenes y sus segmentaciones ideales se muestran a continuacion:

<img src="https://github.com/domingomery/imagenes/blob/master/proyecto/examples.png" width="600">

El algoritmo disenado debe entregar una imagen binaria, y a la vez debe compararse con la segmentacion ideal entregando por imagen los valores:

* TP (true positives): pixeles pertenecientes al lunar correctamente segmentados
* TN (true negatives): pixeles pertenecientes al fondo (piel) correctamente segmentados
* FP (false positives): pixeles pertenecientes al fondo (piel) segmentados como lunar
* FN (false negatives): pixeles pertenecientes al lunar segmentados como fondo (piel)

Asimismo, se debe calcular el TPR (tasa de true positives) y el FPR (tasa de false positives) definidos respectivamente como TP/(TP+FN) y FP/(FP+TN), que idealmente deben ser 100% y 0%. 

Esta permitido usar librerias clasicas de procesamiento de imagenes, pero no de machine learning. Todo lo que se use deben saber explicarlo.

## Fecha de Entrega
Mes de diciembre: Horario a definir con el profesor (coordinar por email: enviar un mail a domingo.mery@uc.cl indicando tres posibles horarios de lunes a viernes entre 9am y 6pm).

## Modalidad de Trabajo
Grupos de 3 personas.

## Presentacion
La presentacion  final del proyecto consiste en una reunion de todos los integrantes del grupo conmigo en mi oficina. La reunión dura 45 minutos y se hara entre 9am y 6pm en un horario definido por el profesor. La puntualidad en la presentación será considerada en la nota.

La reunion conmigo de 45 minutos consta de una presentacion tipo powerpoint, una demo y preguntas de la materia del curso.

La presentacion tipo powerpoint debe incluir:

1) Introduccion (relevancia de este tema, en que consiste el proyecto, etc.), 

2) Revision del [estado del arte](https://scholar.google.cl/scholar?&q=skin+segmentation+mole), 

3) Metodo propuesto en detalle (con un diagrama de bloques claro con todos los pasos y resultados intermedios como el de este [ejemplo](https://github.com/domingomery/imagenes/blob/master/proyecto/diagram_example.png)), 

4) Resultados obtenidos, 

5) Conclusiones (que funciona bien, que funciona mal, que se puede mejorar, dificultades, trabajo futuro, que se aprendioo, etc.) y 

6) Demo: La demo consiste en que ustedes presenten el software funcionando de la mejor manera posible (sin improvisaciones), deben planear muy bien que van a mostrar con buenos experimentos. Ademas deben ser capaces de detectar el iris en 5 imagenes nuevas que el profesor les proporcionara en un pendrive en formato png.

En la presentacion habra preguntas orientadas tanto al proyecto como a cuanto entienden de la materia del curso (examen oral). Esto me servira para poner notas individuales a cada integrante del grupo.

## Nota
La nota del proyecto se calcula de la siguiente manera: 50% presentacion, %25 resultados, 25% examen oral. En la nota se premia el esfuerzo mas que los resultados, tendra una mejor nota una persona que pruebe e invente metodos con resultados no tan buenos, que una persona que pruebe/encuentre una sola funcion con resultados buenos.

## Foro
Para comentarios o preguntas usar por favor el [foro](https://github.com/domingomery/imagenes/issues/9).

## Te interesa el tema?
(*) La base de datos completa HAM10000 con mas de 10.000 imagenes se encuentra [aqui](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/DBW86T)
