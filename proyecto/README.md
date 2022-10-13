# Proyecto: Segmentacion de Pulmones

## Enunciado
El objetivo de este proyecto es segmentar los pulmones que están presentes en una radiografia de la base de datos [Shenzhen](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4256233/). Para este proyecto se han seleccionado sólo 40 radiografías de la base de datos original. La segmentación consiste en encontrar la imagen binaria que contiene los pulmones.

<img src="https://github.com/domingomery/imagenes/blob/master/proyecto/diagram.png" width="600">
          
Para este proyecto se debe probar el metodo propuesto en las 40 imagenes con sus correspondientes segementaciones ideales disponibles en esta [carpeta](https://github.com/domingomery/imagenes/tree/master/proyecto/project). Una visualizacion de algunas de las imagenes y sus segmentaciones ideales se muestran a continuacion:

<img src="https://github.com/domingomery/imagenes/blob/master/proyecto/examples.png" width="600">

El algoritmo disenado debe entregar una imagen binaria, y a la vez debe compararse con la segmentacion ideal entregando por imagen los valores:

* TP (true positives): número de pixeles pertenecientes a los pulmones correctamente segmentados
* TN (true negatives): número de pixeles pertenecientes al fondo (no-pulmón) correctamente segmentados
* FP (false positives): número de pixeles pertenecientes al fondo (no-pulmón) segmentados como pulmón
* FN (false negatives): número de pixeles pertenecientes a pulmones segmentados como no-pulmón

Asimismo, se debe calcular el TPR (tasa de true positives) y el FPR (tasa de false positives) definidos respectivamente como TP/(TP+FN) y FP/(FP+TN), que idealmente deben ser 100% y 0%. 

AGREGAR METRICA DE DESEMPEÑO (F1 Score):

F1 = 2xTP / (2xTP + FP + FN)

Esta permitido usar librerias clasicas de procesamiento de imagenes, pero no de machine learning. Todo lo que se use deben saber explicarlo.

## Modalidad de Trabajo
Grupos de 4 personas.


## Idea del Proyecto

Se debe subir a CANVAS una página en formato PDF en la que se informe cómo piensan hacer el proyecto, esto corresponde al trabajo en clases E09 (ver [fecha de entrega](https://github.com/domingomery/imagenes/blob/master/Calendar.md)). Se debe indicar qué pasos van a seguir, qué métodos vistos en clase van a emplear, qué métodos no vistos en clases piensan estudiar, qué experimentos van a hacer y cualquier otro detalle de la solución que piensan implementar.

## Presentación de Avance

En la presentacion de avance (ver [fecha de entrega](https://github.com/domingomery/imagenes/blob/master/Calendar.md)) se debe mostrar el correcto funcionamiento de la segmentacion en algunas imagenes (por ejemplo las más faciles). La Presentacion de Avances consiste de dos items (cada uno con un archivo que se debe subir a Canvas de manera grupal a más tardar a las 10:00am del dia de la presentacion (esta fecha no podrá ser flexible)):

1. Un archivo PDF de al menos cuatro slides en formato de presentación (como un archivo powerpoint convertido a PDF). El nombre del archivo debe ser AVANCE_GRUPO_xx.PDF donde xx es el número de grupo asignado. Las cuatro slides que la presentación debe contener son: 1) Integrantes del grupo y número del grupo, 2) Descripción de qué se ha hecho (usar un diagrama como este [ejemplo](https://github.com/domingomery/imagenes/blob/master/proyecto/diagram_example.png)), y dar detalles de las estrategias usadas y de los experimentos realizados), 3) Resultados obtenidos, 4) Trabajo futuro. El archivo PDF se deberá subir a Canvas.

2. Una video con una presentación de 5 minutos por grupo. EL video debe ser de 5 minutos exactos, cada 5 segundos de diferencia en el tiempo de duración del video será penalizado con 0.25 puntos en la nota del avance. La presentación debe hacerse de manera ordenada y planificada, sabiendo a priori qué se va a decir en cada slide y quién lo va a decir (escoger a la persona del grupo que pueda hacer la mejor presentación oral). Por favor no improvisar en el momento de la presentación, es necesario tomarlo como si fuera un 'show'con un guión pre-establecido. Ensayen con alguien y pregunten si esa persona ha entendido lo que han dicho. La idea de la presentación es que cada grupo pueda aprender de los otros grupos al compartir experiencias de éxito y de fracaso también. Para la presentación, deben estar presentes todos los miembros del grupo. El archivo MP4 del video se deberá subir a Canvas.





## Presentacion Final
La presentacion  final del proyecto consiste en una reunion de todos los integrantes del grupo con el profesor del curso en su oficina. La reunión dura 45 minutos y se hara entre 9am y 6pm en un horario definido por el profesor. La puntualidad en la presentación será considerada en la nota. Ver [planificación](https://github.com/domingomery/imagenes/blob/master/Calendar.md)

La reunion conmigo de 45 minutos consta de una presentación tipo powerpoint, una demo y preguntas de la materia del curso.

La presentacion tipo powerpoint debe incluir:

1) Introduccion (relevancia de este tema, en que consiste el proyecto, etc.), 

2) Revision del [estado del arte](https://scholar.google.cl/scholar?&q=lung+segmentation), 

3) Metodo propuesto en detalle (con un diagrama de bloques claro con todos los pasos y resultados intermedios como el de este [ejemplo](https://github.com/domingomery/imagenes/blob/master/proyecto/diagram_example.png)), 

4) Resultados obtenidos, 

se debe calcular el TPR (tasa de true positives) y el FPR (tasa de false positives) definidos respectivamente como TP/(TP+FN) y FP/(FP+TN), que idealmente deben ser 100% y 0%. 

SE DEBE AGREGAR METRICA DE DESEMPEÑO (F1 Score):

F1 = 2xTP / (2xTP + FP + FN)


5) Conclusiones (que funciona bien, que funciona mal, que se puede mejorar, dificultades, trabajo futuro, que se aprendio, etc.) y 

6) Demo: La demo consiste en que ustedes presenten el software funcionando de la mejor manera posible (sin improvisaciones), deben planear muy bien que van a mostrar con buenos experimentos. Adicionalmente, deben realizar la segmentacion en 5 imagenes nuevas de lunares (muy similares a la de esta base de datos de 40) que el profesor proporcionara en el momento de la demo. Para la evaluacion de estas 5 imagenes se cuenta tambien con la segmentacion ideal, que sera usada para que calculen el TPR, FPR y F1. 

En la presentacion habra preguntas orientadas tanto al proyecto como a cuanto entienden de la materia del curso (examen oral). Esto me servira para poner notas individuales a cada integrante del grupo.

## Nota
La nota del proyecto se calcula de la siguiente manera: 50% presentacion, %25 resultados, 25% examen oral. En la nota se premia el esfuerzo mas que los resultados, tendra una mejor nota una persona que pruebe e invente metodos con resultados no tan buenos, que una persona que pruebe/encuentre una sola funcion con resultados buenos.

## Foro
Para comentarios o preguntas usar por favor el foro de Canvas.

