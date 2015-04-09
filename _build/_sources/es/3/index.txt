=====================
Plasmoides
=====================

.. sectionauthor:: `rafael rojas <https://github.com/rafael-rojas>`_

.. issues:: 3



.. note::

    El codigo fuente de este capitulo se encuentra en `la carpeta fuentes <../fuentes>`_.

¿Qué es un plasmoide?

Creando un plasmoide
====================

.. issues:: 3

Vamos a crear un pequeño plasmoide que mostrara el tipico mensaje de todos los primeros programas hechos en programación: "Hola mundo". Este plasmoide nos ayudará a comenzar a programar con QML de una forma rapida.




Hola Mundo
===========

.. issues:: 3

.. note::

    Seguiremos las instrucciones de:
    http://blog.davidedmundson.co.uk/node/89

Creamos la estructura del plasmoide para ello cremos una carpeta hello-world para el plasmoide y creamos los archivos:

.. code-block::

    hello-world/metadata.desktop
    hello-world/contents/
    hello-world/contents/ui/
    hello-world/contents/ui/main.qml

Una vez ya tenemos toda la estructura creada, siguiendo el tutorial, introducimos el contenido al archivo ``.desktop`` dentro del archivo metadata.desktop

¿Qué es un .desktop?

cambiamos el autor, el email y el nombre por ejemplo

.. code-block:: desktop 

    [Desktop Entry]
    Encoding=UTF-8
    Name=Tutorial
    Comment=Nuestro primer plasmoide.
    Type=Service
    X-KDE-ParentApp=
    X-KDE-PluginInfo-Author=Rafa
    X-KDE-PluginInfo-Email=neopytek@gmail.com
    X-KDE-PluginInfo-License=GPL
    X-KDE-PluginInfo-Name=hello
    X-KDE-PluginInfo-Version=2.0
    X-KDE-PluginInfo-Website=plasma.kde.org
    X-KDE-ServiceTypes=Plasma/Applet
    X-Plasma-API=declarativeappletscript
    X-Plasma-MainScript=ui/main.qml
    X-Plasma-RemoteLocation=
    X-KDE-PluginInfo-Category=Windows and Tasks

Explicar lineas

X-KDE-PluginInfo-Category: son algunas de las categorias de plasmoides que hay para elegir en plasma 5 por su nombre en ingles y existen las siguientes:

* Application Launchers
* Clipboard
* Contenedores**
* Date and Time
* File system
* Fun and Games
* Language
* Multimedia
* Online Services
* System Information
* Tasks
* Utilities
* Windows and Tasks

Si pones cualquiera de estos nombres, tu plasmoide aparecerá en esa categoria, por ejemplo si pones:

.. code-block:: desktop 

    X-KDE-PluginInfo-Category=Online Services

El plasmoide estara en la categoria Online Services.

.. warning::

    Si pones un nombre que no esta en la lista o si te equivocas al escribir el nombre aparecera una nueva categoria y tu plasmoide estara en ella.
    Tienes que poner los nombres en ingles, en cualquier otro idioma creara una categoria nueva.

.. note::

    En la url ``https://techbase.kde.org/Projects/Plasma/PIG`` en el apartado ``Category Names`` se explican las diferentes categorias disponibles para usar.

A continuacion pasamos a hacer la interfaz
modificamos el archivo ``main.qml`` y pegamos el contenido del tutorial

.. code-block:: qml

    import QtQuick 2.0

    Item {
    	Text {
    	    anchors.centerIn: parent
    	    text: "Hola mundo en Plasma 5";
    	}
    }
    
    

Ya tenemos un plasmoide listo para construir.


Procedemos a instalarlo desde la carpeta raiz donde se encuentra incluida nuestra carpeta hello-world hacemos

.. code-block:: shell

    plasmapkg2 --install hello-world

y el plasmoide ya aparecera en añadir elementos graficos

.. warning::

    si queremos modificar algo en nuestro plasmoide y que los cambios se vean reflejados, antes tenemos que eliminar el plasmoide con
    
    plasmapkg2 --remove hello-world

    y volver a instalarlo con

    plasmapkg2 --install hello-world

plasmapkg2
==========

Desarrollada por Aaron Seigo <aseigo@kde.org>, ``plasmapkg2`` es una herramienta para terminal que nos permite instalar, listar o eliminar paquetes de Plasma.

Creando Plasmoides siguiendo el aspecto de Plasma
=================================================

En este apartado vamos a conocer los componentes que nos permitiran programar Plasmoides que siguen el aspecto del escritorio Plasma.

.. warning::
        A la hora de realizar Plasmoides que sigan el aspecto de Plasma es importante que tengas en cuenta algunas buenas practicas que recomienda David Edmunson en su blog:

        * Evita usar tus propias fuentes y colores. Usa las que te proporciona el tema actual de Plasma.
        * Evita usar el elemento ``Text`` de QML. En su lugar usa el elemento ``Label`` de los componentes de Plasma ya que este elemento es capaz de poner las fuentes correctas con el tamaño correcto automaticamente.
        * No ajustes tamaños de fuente y estilos manualmente.
        * En las cabeceras usa el elemento ``Heading`` de Plasma fijando el nivel apropiado para afectar al tamaño de fuente.
        * Fija todas las animaciones a ``Theme.ShortAnimation`` o ``Theme.LongAnimation`` apropiadamente.
        * No uses ``QtQuick.Controls`` directamente desde dentro de la vista principal del plasmoide.


Componentes de Plasma
=====================

Los componentes de Plasma son el conjunto de widgets (artilugios) estandar de Plasma para utilizar en tus interfaces graficas de usuario QML. 

.. note:.

    La documentación de la API de estos componentes esenciales, se encuentra en:
    http://api.kde.org/frameworks-api/frameworks5-apidocs/plasma-framework/html/plasmacomponents.html

Los componentes se dividen en 5 grandes grupos:

* Widgets
* Contenedores
* Menus
* Listas
* Barra de herramientas

Widgets
=======
Input
    * ``TextArea``: es una area de texto desplazable vertical y horizontalmente.
    * ``TextField``: un campo de texto.
    * ``CheckBox``: una caja de verificación con estados, marcada, desmarcada.
    * ``RadioButton``: Consiste en un botón de selección y una linea de texto.
    * ``Switch``: es un Checkbox pero con aspecto de interruptor.
    * ``Slider``: es un slider interactivo.

Botones
    * ``Button``: es un botón con una etiqueta opcional y cuyo icono usa el tema actual de Plasma.
    * ``ButtonColumn``: permite agrupar botones en una columna.
    * ``ButtonRow``: permite agrupar botones en una fila.
    * ``ToolButton``: botón de herramientas.

Miscelanea
    * ``BusyIndicator``: un indicador de ocupado simple, se usa para indicar que la duracion de una tarea es desconocida.
    * ``ProgressBar``: Barra que indica el progreso de relización de una tarea cuya duración es conocida.
    * ``Label``: proporciona textos autoamticamente ajustados al tema actual de plasma.

    .. warning::
            Usar siempre ``Label`` de los componentes de Plasma en sustitución de ``Text`` de los componentes básicos de QML cuando se programen plasmoides.


Contenedores
============
Paginas
    * ``Page``: Define el contenido de una pieza de la interfaz de usuario. Se usa conjuntamente con ``PageStack`` y ``TabGroup``. Su uso principal es crear plasmoides donde la pantalla entera consiste una serie de paginas intercambiables o desplazables una tras otra con el dedo o el ratón.
    * ``PageOrientation``: NO HAY DOCUMENTACIÓN.
    * ``PageStatus``: NO HAY DOCUMENTACIÓN.
    * ``PageStack``: proporciona una navegación estilo pila.
Dialogos
    * Dialog
    * DialogStatus
    * CommonDialog
    * QueryDialog
    * SelectionDialog
Tab bars
    * TabBar
    * TabButton
    * TabGroup
Miscelanea
    * Sheet
    * ScrollBar


Menus
=====

    * Menu
    * MenuItem
    * ContextMenu

Listas
======


    * ListItem
    * Highlight
    * SectionScroller

Barra de herramientas
=====================

    * ToolBar
    * ToolBarLayout


