=====================
QML básico
=====================

.. sectionauthor:: `rafael rojas <https://github.com/rafael-rojas>`_

.. issues:: 4

propiedades comunes de elementos qml
-------------------------------------

``id`` se suele usar para darle un nombre para referenciar el elemento.

Propiedades de geometria

* ``x`` es la posicion x del elemento.
* ``y`` es la posicion y del elemento.
* ``z`` es la posicion z del elemento.
* ``width`` es el ancho del elemento.
* ``height`` es el alto del elemento.

Propiedades de gestión de Layout

* ``anchors`` son propiedades que nos permiten posicionar un elemento especificando su relación con otros elementos. Cada elemento tiene el siguiente conjunto de siete lineas de "posición relativa":

.. warning::
        Solo puedes posicionar elementos relativamente usando anchors con sus elementos padres o hermanos.

    * ``anchors.right`` es el margen derecho.
    * ``anchors.left`` es el margen izquierdo.
    * ``anchors.top`` es el margen superior.
    * ``anchors.bottom`` es el margen inferior.

    .. note::
            Los margenes no se aplican si el elemento no usa anchors.

    * ``anchors.horizontalCenter`` fija el centro horizontal.
    * ``anchors.verticalCenter`` fija el centro vertical.
    * ``anchors.baseline`` baseline es la linea imaginaria donde se situa el texto.

    .. note::
            En los elementos que no tienen texto, actua igual que la propiedad top.

    Además existen las siguientes propiedades que completan el grupo de propiedades de anchor:

    .. note::
            Los offsets nos permiten poder manipular la posición usando las lineas centrales del anchor.

    * ``anchors.horizontalCenterOffset``
    * ``anchors.verticalCenterOffset``
    * ``anchors.baselineOffset``
    * ``anchors.alignWhenCentered``
    * ``anchors.fill`` se usa para conseguir que un elemento tenga la misma geometria que otro elemento.

    .. warning::
            Esta propiedad no sobreescribe el valor de un margen que ya este definido previamente. Para ello hay que "limpiar" el valor de ese margen poniendo undefined.

    .. note::
            Los margenes no se aplican si el elemento no usa anchors.

    * ``anchors.centerIn`` sirve para fijar los valores de anchors.verticalCenter y anchors.horizontalCenter del elemento a los mismos valores de esas propiedades de otro elemento.

    Los margenes especifican la cantidad de espacio vacio que se deja fuera de los anchors del elemento.

    .. image:: img/margins_qml.png

    (licencia de la imagen: GNU Free Documentation License version 1.3)

    Existen las siguientes propiedades:

    * ``anchors.topMargin`` valor del margen superior fuera del anchor.
    * ``anchors.bottomMargin`` valor del margen inferior fuera del anchor.
    * ``anchors.leftMargin`` valor del margen izquierdo fuera del anchor.
    * ``anchors.rightMargin`` valor del margen derecho fuera del anchor.
    * ``anchors.margins`` especifica el mismo valor de margen para las cuatro esquinas. Con esta propiedad fijas el valor de los margenes superior, inferior, izquierdo y derecho al mismo valor.


Key handling

attached Key and KeyNavigation properties to control key handling and the input focus property to enable key handling in the first place

Transformation

scale and rotate transformation and the generic transform property list for x,y,z transformation and their transformOrigin point

Visual 	
opacity to control transparency, visible to show/hide elements, clip to restrain paint operations to the element boundary and smooth to enhance the rendering quality

    * antialiasing se usa para decidir si el elemento usa antialiasing o no.

    .. note ::
            El antialiasing elimina el efecto estético desagradable de líneas escalonadas que aparecen en un gráfico o texto con aliasing.

State definition 	
states list property with the supported list of states and the current state property as also the transitions list property to animate state changes.

.. note::

    los tipos basicos que vienen con import Qtquick 2
    http://doc.qt.io/qt-5/qmlbasictypes.html
    http://doc.qt.io/qt-5/qtquick-positioning-anchors.html#anchor-margins-and-offsets
    http://doc.qt.io/qt-5/qml-qtquick-item.html#anchors.baseline-prop

    sigo el apartado de http://qmlbook.github.io/en/ch04/index.html#basic-elements

ELEMENTOS BASICOS
-----------------

ELEMENTOS VISUALES
------------------

Texto
-----

Se usa para mostrar un texto

.. note::

    Puedes usar el grupo de propiedades de fuente para modificar la fuente
    
    
* elide
* Wrapmode
* style
* styleColor

.. warning::
    El texto no tiene fondo

propiedades
	text en esta propiedad escribes el texto a mostrar

	
Rectangulo
----------

http://doc.qt.io/qt-5/qml-qtquick-rectangle.html

propiedades

    * antialiasing : se usa para que los bordes redondeados se vean bien
    * border.width : ancho del borde
    * border.color : color del borde
    * color : color de relleno, el color por defecto es el blanco
    * gradient : rellenar usando un gradiente
    * radius : hacer los bordes redondeados

.. warning::
  Si defines la propiedad color y la propiedad gradiente, se usará el gradiente.

.. note::
  Si defines un color de borde y no quieres que el rectangulo tenga relleno puedes poner color a transparent

ejemplo (sacado de la web)

.. code-block:: qml

    import QtQuick 2.0

    Rectangle {
	width: 100
	height: 100
	color: "red"
	border.color: "black"
	border.width: 5
	radius: 10
    }

