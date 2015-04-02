 
// M1>>
import QtQuick 2.0

    // Elemento rectangulo, en este caso es el elemento raíz
    Rectangle {
	// nombre del elemento
	id: root

	// propiedades: <nombre>: <valor>
	width: 120; height: 240

	// propiedad color
	color: "#D8D8D8"

	// Declaramos un elemento anidado (rocket es hijo de root)
	Image {
	    id: rocket

	    // referencia al padre
	    x: (parent.width - width)/2; y: 40

	    source: 'assets/rocket.png'
	}
    }
// <<M1