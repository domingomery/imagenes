# Proyecto: Segmentacion de Lunares

## Enunciado
El objetivo de este proyecto es segmentar el lunar que esta presente en una imagen dermatoscopica de la base de datos HAM10000(*). La segmentación consiste en encontrar la imagen binaria que contiene el lunar.

<img src="https://github.com/domingomery/imagenes/blob/master/proyecto/diagram.png" width="600">
          
Para este proyecto se debe probar el metodo propuesto en las 50 imagenes con sus correspondientes segementaciones ideales disponibles en esta [carpeta](https://github.com/domingomery/imagenes/tree/master/proyecto/images). Una visualizacion de algunas de las imagenes y sus segmentaciones ideales se muestran a continuacion:

<img src="https://github.com/domingomery/imagenes/blob/master/proyecto/examples.png" width="600">

El algoritmo disenado debe entregar una imagen binaria, y a la vez debe compararse con la segmentacion ideal entregando por imagen los valores:

* TP (true positives): numero de pixeles pertenecientes al lunar correctamente segmentados
* TN (true negatives): numero de pixeles pertenecientes al fondo (piel) correctamente segmentados
* FP (false positives): numero de pixeles pertenecientes al fondo (piel) segmentados como lunar
* FN (false negatives): numero de pixeles pertenecientes al lunar segmentados como fondo (piel)

Asimismo, se debe calcular el TPR (tasa de true positives) y el FPR (tasa de false positives) definidos respectivamente como TP/(TP+FN) y FP/(FP+TN), que idealmente deben ser 100% y 0%. 

AGREGAR METRICA DE DESEMPEÑO (F1 Score):

F1 = TT / (TT + FP + FN) donde TT = 2 x TP

Esta permitido usar librerias clasicas de procesamiento de imagenes, pero no de machine learning. Todo lo que se use deben saber explicarlo.

## Modalidad de Trabajo
Grupos de 3 personas.


## Idea del Proyecto

Se debe enviar por mail a domingo.mery@uc.cl una pagina en formato PDF en la que se informe cómo piensan hacer el proyecto. Se debe indicar qué pasos van a seguir, qué métodos vistos en clase van a emplear, qué métodos no vistos en clases piensan estudiar, qué experimentos van a hacer y cualquier otro detalle de la solución que piensan implementar. Fecha de entrega: 24/11 a las 6:30pm

## Presentación de Avance

En la presentacion se debe mostrar el correcto funcionamiento de la segmentacion en algunas imagenes (por ejemplo las mas faciles). La Presentacion de Avances consiste de dos items:

1. Un archivo PDF de cuatro slides en formato de presentación (como un archivo powerpoint convertido a PDF). El nombre del archivo debe ser AVANCE_GRUPO_xx.PDF donde xx es el número de grupo asignado. Las cuatro slides deben ser: 1) Integrantes del grupo y número del grupo, 2) Descripción de qué se ha hecho (usar un diagrama, y dar detalles de las estrategias usadas y de los experimentos realizados), 3) Resultados obtenidos, 4) Trabajo futuro. El archivo PDF se deberá subir a mas tardar a las 10:00am del dia de la presentacion que le toque al grupo (esta fecha no podrá ser flexible). El PDF se debe subir a Google Classroom en la opcion del dia correspondiente (los grupos del martes suben en la opcion del martes, los del jueves en la opcion del jueves).

2. Una presentación de 8 minutos por grupo usando zoom. El PDF de cada grupo será compartido por el zoom del profesor. La presentación se realizará los dias 01 y 03/Dic usando el horario de clases. Se deberá hacer una presentación ordenada y planificada, sabiendo a priori qué se va a decir en cada slide y quién lo va a decir (escoger a la persona del grupo que pueda hacer la mejor presentación oral). Por favor no improvisar en el momento de la presentación, es necesario tomarlo como si fuera un 'show'con un guión pre-establecido. Ensayen con alguien y pregunten si esa persona ha entendido lo que han dicho. El orden de los grupos en la presentación es aleatorio (puede ser que el primero en presentar sea el grupo 15 y el segundo el grupo 3, etc.). La idea de la presentación es que cada grupo pueda aprender de los otros grupos al compartir experiencias de éxito y de fracaso también. Para la presentación, lo ideal es que estén todos los miembros del grupo (habrá flexibilidad para aquello/as que tengan algún problema producto de la pandemia siempre y cuando esté debidamente justificado).

* Presentacion Martes 01/Dic - 11:30am: Grupos 02, 04, 05, 07, 09, 12, 15, 16, 17

* Presentacion Jueves 03/Dic - 11:30am: Grupos: 01, 03, 06, 08, 10, 11, 13, 14


[Ver presentaciones](https://github.com/domingomery/imagenes/edit/master/proyecto/avances)



## Fecha de Presentación Final
* Grupo 01: Vi. 11 a las 11:00 hrs
* Grupo 02: Lu. 14 a las 11:00 hrs
* Grupo 03: Ju. 10 a las 9:00 hrs
* Grupo 04: Ju. 10 a las 13:00 hrs
* Grupo 05: Vi. 11 a las 15:00 hrs
* Grupo 06: Vi. 11 a las 8:00 hrs
* Grupo 07: Ju. 10 a las 10:00 hrs
* Grupo 08: Ma. 08 a las 17:00 hrs
* Grupo 09: Ma. 08 a las 16:00 hrs
* Grupo 10: Mi. 09 a las 10:00 hrs
* Grupo 11: Lu. 14 a las 10:00 hrs
* Grupo 12: Vi. 11 a las 10:00 hrs
* Grupo 13: Lu. 14 a las 9:00 hrs
* Grupo 14: Vi. 11 a las 12:00 hrs
* Grupo 15: Ju. 10 a las 8:00 hrs
* Grupo 16: Vi. 11 a las 9:00 hrs
* Grupo 17: Ju. 10 a las 12:00 hrs

La presentación será por zoom usando el [link del curso](https://notredame.zoom.us/my/imagenes)

Zoom el Meeting ID: 386 155 8778


## Presentacion Final
La presentacion  final del proyecto consiste en una reunion de todos los integrantes del grupo conmigo en mi oficina. La reunión dura 45 minutos y se hara entre 9am y 6pm en un horario definido por el profesor. La puntualidad en la presentación será considerada en la nota.

La reunion conmigo de 45 minutos consta de una presentacion tipo powerpoint, una demo y preguntas de la materia del curso.

La presentacion tipo powerpoint debe incluir:

1) Introduccion (relevancia de este tema, en que consiste el proyecto, etc.), 

2) Revision del [estado del arte](https://scholar.google.cl/scholar?&q=skin+segmentation+mole), 

3) Metodo propuesto en detalle (con un diagrama de bloques claro con todos los pasos y resultados intermedios como el de este [ejemplo](https://github.com/domingomery/imagenes/blob/master/proyecto/diagram_example.png)), 

4) Resultados obtenidos, 

5) Conclusiones (que funciona bien, que funciona mal, que se puede mejorar, dificultades, trabajo futuro, que se aprendio, etc.) y 

6) Demo: La demo consiste en que ustedes presenten el software funcionando de la mejor manera posible (sin improvisaciones), deben planear muy bien que van a mostrar con buenos experimentos. Adicionalmente, deben realizar la segmentacion en 5 imagenes nuevas de lunares (muy similares a la de esta base de datos de 50) que el profesor proporcionara en el momento de la demo. Para la evaluacion de estas 5 imagenes se cuenta tambien con la segmentacion ideal, que sera usada para que calculen el TPR y FPR. 

En la presentacion habra preguntas orientadas tanto al proyecto como a cuanto entienden de la materia del curso (examen oral). Esto me servira para poner notas individuales a cada integrante del grupo.

## Nota
La nota del proyecto se calcula de la siguiente manera: 50% presentacion, %25 resultados, 25% examen oral. En la nota se premia el esfuerzo mas que los resultados, tendra una mejor nota una persona que pruebe e invente metodos con resultados no tan buenos, que una persona que pruebe/encuentre una sola funcion con resultados buenos.

## Foro
Para comentarios o preguntas usar por favor el [foro](https://github.com/domingomery/imagenes/issues/9).

## Te interesa el tema?
(*) La base de datos completa HAM10000 con mas de 10.000 imagenes se encuentra [aqui](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/DBW86T)
