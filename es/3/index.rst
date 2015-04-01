=====================
Plasmoides
=====================

.. sectionauthor:: `rafael rojas <https://github.com/rafael-rojas>`_

.. issues:: 3



.. note::

    El codigo fuente de este capitulo se encuentra en `assets folder <../assets>`_.


Creando un plasmoide
====================

.. issues:: 3





Hola Mundo
===========

.. issues:: 3

.. note::

    Seguiremos las instrucciones de:
    http://blog.davidedmundson.co.uk/node/89

Creamos la estructura del plasmoide para ello cremos una carpeta hello-world para el plasmoide y cremos los archivos:

.. code-block::

    hello-world/metadata.desktop
    hello-world/contents/
    hello-world/contents/ui/
    hello-world/contents/ui/main.qml

Una vez ya tenemos toda la estructura creada, siguiendo el tutorial, introducimos el contenido al archivo ``.desktop`` dentro del archivo metadata.desktop

cambiamos el autor, el email y el nombre por ejemplo

.. code-block:: desktop 

    [Desktop Entry]
    Encoding=UTF-8
    Name=Tutorial
    Comment=Tutoial on getting started with Plasma 5 plasmoids .
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

    Si pones un nombre que no esta en la lista o si te equivocas al escribir el nombre aparecera una nueva categoria y tu plasmoide estara en ella
    Tienes que poner los nombres en ingles, en cualquier otro idioma creara una categoria nueva

.. note::

    En la url ``https://techbase.kde.org/Projects/Plasma/PIG`` en Category Names se explican las diferentes categorias disponibles para usar.

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


Procedemos a instalarlo
desde la carpeta donde se encuentra nuestra carpeta hello-world hacemos

.. code-block:: shell

    plasmapkg2 --install hello-world

y el plasmoide ya aparecera en añadir elementos graficos

.. warning::

    si queremos modificar algo en nuestro plasmoide y que los cambios se vean reflejados, antes tenemos que eliminar el plasmoide con
    
    plasmapkg2 --remove hello-world

    y volver a instalarlo con

    plasmapkg2 --install hello-world