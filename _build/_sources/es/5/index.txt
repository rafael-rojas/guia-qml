=====================
QML y Javascript
=====================

.. sectionauthor:: `rafael rojas <https://github.com/rafael-rojas>`_

.. issues:: 5

Ya hemos visto que QML es un lenguaje declarativo que se usa para describir la interfaz de usuario. Pero ademas de describir la interfaz necesitamos añadir una logica a nuestros programas o expresar operaciones que añadan cierta funcionalidad a nuestras aplicaciones, ahi entra JavaScript.

Podemos insertar codigo JavaScript en diferentes partes de un archivo QML, insertando funciones JS, insertando un modulo JS o en forma de expresion asignada como valor a cualquier propiedad.

* Insertando un modulo JS

  .. code-block:: qml
  
      import "logica.js" as Logica

* Como una función

  .. code-block:: qml
  
      Button {
	id: boton
	width: 200
	height: 100
	
	function mensaje() {
	  console.log("botón apretado");
	}
      }
      
* Como expresión en propiedades

  .. code-block:: qml
  
      Button {
	id: boton
	width: 200
	height: 100
	
	function mensaje() {
	  console.log("botón apretado");
	}
	
	onTriggered: {
	  //codigo JavaScript como valor de una propiedad
	  mensaje();
	  Qt.quit();
	}
      }


Si estas familiarizado con el desarrollo web conocerás que en HTML solo puedes añadir codigo javascript en los controladores de eventos, el codigo javascript se inicializa  al cargarse la pagina pero no puedes usar JS en valores de propiedades.

JavaScript
----------

Javascript fue introducido en 1995 como una forma de añadir programas a las paginas web en el navegador Netscape Navigator. Hoy en dia ha sido adoptado por todos lo grandes navegadores web y hace posible las aplicaciones web modernas.

JavaScript es un lenguaje de programción interpretado basado en el estandar ECMAScript, orientado a objetos, basado en prototipos, debilmente tipado. JavaScript se diseñó con una sintaxis similar al C, aunque adopta nombres y convenciones del lenguaje de programación Java. Sin embargo Java y JavaScript no están relacionados, tienen semánticas y propósitos diferentes.

Historia
--------

El lenguaje
-----------

Valores en Javascript
=====================

La informacion que maneja un ordenador no es mas que un flujo de bits, cantidades enormes de ceros y unos que pueden almacenarse en las memorias de almacenamiento de hoy en dia. Para ser capaces de trabajar con tales cantidades de información dividimos las secuencias de bits en trozos mas pequeños a los que llamamamos valores en JS.

Todos los valores son secuencias de bits, mas o menos largas, que interpretan papeles diferentes. Cada valor representa un tipo que determina su papel. En JS existen seis tipos basicos de valores:

* Numeros
* Cadenas
* Booleanos
* Objetos
* Funciones
* Valores undefined

Numeros
=======

Los valores de tipo number representan valores numericos. Javascript usa un numero fijo de 64 bits de memoria para almacenar un valor numerico. Esto quiere decir que cada vez que escribes un valor numerico en un programa JavaScript, JS reserva 64 bits (8 bytes) de memoria para almacenarlo.

Ejemplos de como representar diferentes valores numericos:

Valor entero:

.. code-block:: js

  14 //numeros no decimales
  
Decimal:

.. code-block:: js

  0.12 //usamos un punto para representarlos
  
Puedes usar notación cientifica para representar decimales:

.. code-block:: js

  3.777e8 //la e significa exponente
	  //3.777 x 10 elevado a 8

.. note ::

    64 bits para representar valores numericos es un numero finito, esto hace que los numeros decimales (o fraccionarios) no sean siempre 100% precisos y en algunos casos sean aproximados.

Numeros especiales:

Se consideran numeros pero no se comportan como numeros normales.

* Infinity

* -Infinity

* NaN

Cadenas
=======

Los valores de tipo string se usan para representar textos. Se escriben entre comillas dobles o simples.

.. code-block:: js

  "Esto es un texto"
  'Esto es otro texto'
  
Se usan ambos tipos de comillas indiferentemente, pero debes siempre empezar y acabar el texto con el mismo tipo de comillas.
Los caracteres especiales se escapan con barra invertida ``\``. Esto es util si por ejmplo quieres tener un exto que incluya dobles comillas o comillas simples.

.. code-block:: js

  "Esto es un texto con \"\" "
  
Se veria como:

.. code-block:: js

  'Esto es un texto con "" '
  
Las cadenas no pueden dividirse, multiplicarse, o sustraerse.
Pero podemos usar el operador + para concatenar cadenas, es decir unir dos cadenas de texto una detras de otra en una sola.

.. code-block:: js

  "cara" + "cola"
  
Da como resultado:

.. code-block:: js

  "caracola"
  
Booleanos
=========

Son valores que se usan para distinguir entre dos posibles estados, o dos posibilidades. Se usa para representar cosas como si o no, encendido o apagado, verdaero o falso. El tipo Bool de Javascript solo puede tomar dos valores ``true`` o ``false``.

Objetos
=======

Los objetos son un tipo de valor que nos permite agrupar otros tipos de valores y asi crear tipos mas complejos. Más adelante mas.

Funciones
=========

Una función es una porción de codigo encapsulada en un valor. En JavaScript las funciones son tambien un tipo basico de valor. De forma que al asignar una función como valor de una variable, el codigo encapsulado en la funcion se ejecutara.

.. code-block:: js

  //al asignar una funcion a la variable producto
  //producto pasa a almacenar el resultado de a * b
  
  var producto = function(a, b) {
    return a * b;
  };
  
.. note::
    
    Mas adelante veremos que son las variables, que significa el caracter ``*`` y como se forman las funciones
    

Valores undefined
=================

Este tipo de valores denotan ausencia de valor. JS tiene los valores ``null`` y ``undefined`` ambos son valores pero no representan información alguna.

Operadores
----------

Operadores Aritmeticos
======================

JS tiene los siguientes operadores aritmeticos:

* Operador suma ``+`` que suma numeros
* Operador producto ``*`` que multiplica numeros
* Operador resta ``-`` que resta numeros
* Operador división ``/`` que divide numeros
* Operador modulo ``%`` que divide numeros y devuelve el resto de la división


Precedencia de operadores aritmeticos:

division, producto y modulo tienen la misma precedencia.

suma y resta tienen la misma precedencia.

division, producto y modulo tienen prioridad sobre suma y resta.

Si hay operadores con la misma precedencia y hay ausencia de parentesis la precedencia se aplica de izquierda a derecha.

operadores dentro de parentesis tienen precedencia.

EL BUEN JAVASCRIPT
------------------

Estas son algunas de la recomendaciones de segun su experiencia progrmando JS, para hacer buen codigo javascript.

* Siempre tomate el tiempo necesario para programar de forma correcta.

* Usa unicamente el operador === para comparaciones.

* Recuerda que el operador + suma, pero tambien concatena.

* typeof no funciona siempre bien, evita usarlo.

* No uses with y eval

* Usa siempre undefined olvidate de null, en comparaciones === undefined

* 0.1 + 0.2 !== 0.3

* No uses ++ y -- te ahorraras muchos problemas

* switch

* Usa siempre la notación 
	    x{
	    }

Cosas a no usar:

* No usar Object.create 
* No uses this
* No usar for, usar forEach
* No usar for in, usa Object.keys(object).forEach
* Usa function scopes


Seguridad en archivos QML
-------------------------

http://www.aegiap.eu/kdeblog/2015/04/embedded-qml-in-qrc-file/

Embedded QML in qrc file

KDAB works on a lot of projects based on qml.
But sometime for specific applications it’s not safe to store directly qml file on file system.
As you know the QML files are plain text files.

For example if an user can have access to qml files he can change the logic of the application.
This is not critical for a application as  “Clock” but it can be critical in other domains.

So there is two methods to avoid it:

    Using the Qt Resource for embedding the QML files (This blog will explain how to do).
    Using the qtquickcompiler to generate a precompiled QML file (But a commercial license is needed)

The Qt Resource system allows to store a lot of data/binary files in executable directly.
Data can be an icon, a translation file, etc. and of course a QML file.

This blog will explain how to use it in a QML plugins implemented based on a QMLExtensionPlugins class.

For a standard application which uses some QML files this is very easy. We put them in a qrc file and we can access to it directly with a line as “view.setSource(QUrl(QStringLiteral(“qrc:/plugins.qml”)));”

We will see how to do it on a example based on qmlextensionplugins.

We adapted a qt qmlextensionplugins example (It’s the Clock example that you can find in qt source code) to create an little application.
Source code can be download here

It will display a clock.
The pro files were adapted to allow to install apps in “install” directory.
(qmake && make && make install).

When you look at install folder you can see all these files.

./plugins.qml
./extensionpluginsapps
./TimeExample/hour.png
./TimeExample/minute.png
./TimeExample/clock.png
./TimeExample/qmldir
./TimeExample/center.png
./TimeExample/libqmlqtimeexampleplugin.so
./TimeExample/Clock.qml
./TimeExample

=> As you see the QML files are stored on filesystem.

Now what we need to change for using Qt Resource ?

We will create a Qt Resouce file which will embed all qml files and icons.

”
<RCC>
<qresource prefix=”/clock”>
<file>Clock.qml</file>
<file>center.png</file>
<file>clock.png</file>
<file>hour.png</file>
<file>minute.png</file>
</qresource>
</RCC>
”

There is not a specific prefix.
And you just need to adapt qmldir for using a specific QtResource path (use qrc:///<path>)

”
module TimeExample
Clock 1.0 qrc:///clock/Clock.qml
plugin qmlqtimeexampleplugin
”
Of course the file qmldir can’t be stored in Qt Resource file otherwise  the application will not be able to  find plugin.

As you see now the list of files in install directory is limited to:

./extensionpluginsapps
./TimeExample/qmldir
./TimeExample/libqmlqtimeexampleplugin.so
./TimeExample

(of course I stored plugins.qml in another qrc file).

So the application is more safe now.

You can get source code here

