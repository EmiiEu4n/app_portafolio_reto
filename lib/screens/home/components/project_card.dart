import 'package:app_portafolio_reto/models/Project.dart'; // Importa el modelo Project que contiene los datos de un proyecto.
import 'package:app_portafolio_reto/responsive.dart'; // Importa la clase responsive para hacer el diseño adaptable a diferentes tamaños de pantalla.
import 'package:flutter/material.dart'; // Importa la biblioteca de Flutter para crear la UI.

import '../../../constants.dart'; // Importa las constantes definidas en el archivo de constantes.

class ProjectCard extends StatelessWidget { // Define la clase ProjectCard como un StatelessWidget.
  const ProjectCard({ // Constructor de la clase ProjectCard.
    super.key, // Se utiliza para permitir la gestión de claves del widget.
    required this.project, // Recibe un parámetro obligatorio de tipo Project que contiene los datos del proyecto.
  });

  final Project project; // Declara una variable final para almacenar el objeto Project.

  @override
  Widget build(BuildContext context) { // Método build que construye la interfaz de usuario.
    return Container( // Utiliza un contenedor para envolver el contenido de la tarjeta del proyecto.
      padding: const EdgeInsets.all(defaultPadding), // Añade un relleno alrededor del contenido de la tarjeta.
      color: secondaryColor, // Establece el color de fondo de la tarjeta usando una constante secundaria.
      child: Column( // Organiza los elementos de forma vertical (en columna).
        crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos al inicio del eje horizontal (justifica a la izquierda).
        children: [
          Text( // Muestra el título del proyecto.
            project.title!, // Accede al título del proyecto.
            maxLines: 2, // Limita el número de líneas visibles a 2.
            overflow: TextOverflow.ellipsis, // Muestra "..." si el texto excede el espacio disponible.
            style: Theme.of(context).textTheme.titleSmall, // Aplica el estilo del tema para el título.
          ),
          Spacer(), // Añade un espacio flexible entre los elementos.
          Text( // Muestra la descripción del proyecto.
            project.description!, // Accede a la descripción del proyecto.
            maxLines: Responsive.isMobileLarge(context) // Dependiendo del tamaño de la pantalla (si es móvil grande o no), se limita el número de líneas visibles.
                ? 3
                : 4, // Limita el número de líneas (3 en móvil grande y 4 en otros casos).
            overflow: TextOverflow.ellipsis, // Muestra "..." si la descripción es más larga de lo que se puede mostrar.
            style: TextStyle(height: 1.5), // Establece el estilo de texto con un alto de línea de 1.5.
          ),
          Spacer(), // Añade un espacio flexible entre el texto y el siguiente widget.
          TextButton( // Crea un botón de texto "Leer más".
            onPressed: () {}, // Acción cuando el botón es presionado (vacío por ahora).
            child: Text(
              "Read More>>", // Texto que aparece en el botón.
              style: TextStyle(
                  color: primaryColor), // Establece el color del texto del botón usando una constante primaria.
            ),
          ),
        ],
      ),
    );
  }
}
