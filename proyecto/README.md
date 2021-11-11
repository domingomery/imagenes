# Proyecto: Filtros de Caras

## Enunciado
El objetivo de este proyecto es realizar "filtros genéricos" de una cara a partir de una o más imágenes de una cara y su malla triangular que indica la posición de cada parte de la cara. El filtro genérico podrá ser utilizado en cualquier cara. A manera de ejemplo, si un filtro genérico realiza la operación de entristecer una cara, este filtro debería funcionar correctamente para cualquier imagen de una cara (que cumpla con determinadas características como por ejemplo que esté mirando de frente).

En este proyecto hay mucha libertad de que efecto lograr con el filtro, por ejemplo se puede:

*  cambiar la expresión facial de cara neutral a cara triste, 

* realizar un maquillaje,

* suplantar la cara de una persona por otra

* agregar pelo, barba, anteojos, etc.

* a partir de dos fotos de una misma persona (con dos expresiones distintas), hacer un video que muestre la transición de una cara a la otra.


Se requiere que al menos existan tres filtros genéricos de un grado de dificultad tal que involucre al menos 30 horas de trabajo de cada participante del grupo. Al menos uno de estos filtros debe generar un video 5 segundos o más. Cada filtro debe funcionar en al menos 5 fotos de caras de distintas personas.

Un ejemplo de filtro génerico que le realiza a la cara un maquillaje de payaso (como el del personaje "Joker" en la película "El Huasón") se aprecia en el siguiente diagrama de bloques:

<img src="https://github.com/domingomery/imagenes/blob/master/proyecto/diagram.png" width="1000">
          

Está permitido usar librerías clásicas de procesamiento de imágenes, pero no de machine learning. Todo lo que se use deben saber explicarlo.

Ver más ejemplos [aquí](https://youtu.be/qVi4Fnm_58M)


Para construir el mesh de una cara se puede usar el siguiente código:
* [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1vfc71PbQvomZ0d95oTBHNqs5HfNArS7L?usp=sharing) Mesh geométrico de la cara 



## Modalidad de Trabajo
Grupos de 3 personas.

## Fechas de Entrega
- Lu. 22/Nov 8pm: entrega de PDF dee Propuesta de Proyecto 
- Mi. 01/Dic 8pm: entrega de video de Presentación de Avance
- Ju. 02/Nov 11:30am: se muestran los videos de las presentaciones, los integrantes deben estar presentes para que puedan contestar preguntas.
- del 06 al 10 de diciembre: Presentación Final

## Propuesta de Proyecto
Se debe realizar una pagina en formato PDF en la que se informe cómo piensan hacer el proyecto. Se debe indicar qué pasos van a seguir, qué métodos vistos en clase van a emplear, qué métodos no vistos en clases piensan estudiar, qué experimentos van a hacer y cualquier otro detalle de la solución que piensan implementar. (ver detalles detalles en Google Classroom - "Definicion_de_proyecto")


## Video de Presentación de Avance
Se debe realizar un video de 4 minutos (+/- 10 segundos) que haga un buen resumen del proyecto, debe incluir la motivación, el problema, la solución, los resultados experimentales y las conclusiones. (ver más detalles en Google Classroom - "Avance_de_Proyecto")


## Presentacion Final
La presentacion  final del proyecto consiste en una reunion de todos los integrantes del grupo con el profesor del curso (por zoom). La reunión dura 45 minutos y se hara entre 9am y 6pm en un horario definido por el profesor. La puntualidad en la presentación será considerada en la nota.

La reunion de 45 minutos consta de una presentacion tipo powerpoint, una demo y preguntas de la materia del curso.

La presentacion tipo powerpoint debe incluir:

1) Introduccion (relevancia de este tema, en que consiste el proyecto, etc.), 

2) Revision del estado del arte, 

3) Metodo propuesto en detalle (con un diagrama de bloques claro con todos los pasos y resultados intermedios como el de este [ejemplo](https://github.com/domingomery/imagenes/blob/master/proyecto/diagram_example.png)), 

4) Resultados obtenidos que muestren los filtros genéricos funcionando correctamente

5) Conclusiones (que funciona bien, que funciona mal, que se puede mejorar, dificultades, trabajo futuro, que se aprendio, etc.) y 

6) Demo: La demo consiste en que ustedes presenten el software funcionando de la mejor manera posible (sin improvisaciones), deben planear muy bien que van a mostrar con buenos experimentos.

En la presentacion habra preguntas orientadas tanto al proyecto como a cuanto entienden de la materia del curso (examen oral. Esto sirve para poner notas individuales a cada integrante del grupo.

## Nota
La nota del proyecto se calcula de la siguiente manera: 50% presentacion, %25 resultados, 25% examen oral. En la nota se premia el esfuerzo mas que los resultados, tendra una mejor nota una persona que pruebe e invente metodos con resultados no tan buenos, que una persona que pruebe/encuentre una sola funcion con resultados buenos.

## Foro
Para comentarios o preguntas usar por favor el [foro](https://github.com/domingomery/imagenes/issues/15).

