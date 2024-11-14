import 'package:app_portafolio_reto/models/Project.dart'; // Importa el modelo Project que contiene los datos de los proyectos.
import 'package:app_portafolio_reto/responsive.dart'; // Importa la clase Responsive para gestionar la adaptabilidad a diferentes tamaños de pantalla.
import 'package:flutter/material.dart'; // Importa la biblioteca de Flutter para crear la interfaz de usuario.

import '../../../constants.dart'; // Importa las constantes definidas en el archivo de constantes.
import 'project_card.dart'; // Importa el widget ProjectCard, que representa la tarjeta de cada proyecto.

class MyProjects extends StatelessWidget { // Define la clase MyProjects como StatelessWidget.
  const MyProjects({ // Constructor de la clase MyProjects.
    Key? key, // Recibe un parámetro opcional para la clave del widget.
  }) : super(key: key); // Inicializa el widget base con la clave proporcionada.

  @override
  Widget build(BuildContext context) { // Método build que construye la interfaz de usuario.
    return Column( // Utiliza un widget Column para organizar los elementos verticalmente.
      crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos al inicio del eje horizontal (a la izquierda).
      children: [
        Text( // Muestra el texto "My Projects".
          "My Projects",
          style: Theme.of(context).textTheme.titleLarge, // Aplica el estilo del tema para el título.
        ),
        const SizedBox(height: defaultPadding), // Añade un espacio entre el título y la siguiente sección.
        Responsive( // Widget que permite hacer la interfaz adaptable a diferentes tamaños de pantalla.
          mobile: ProjectsGridView( // Para dispositivos móviles pequeños, se usa una vista de grid con 1 columna.
            crossAxisCount: 1,
            childAspectRatio: 1.7, // Relación de aspecto de los elementos del grid (alto / ancho).
          ),
          mobileLarge: ProjectsGridView( // Para dispositivos móviles más grandes, se usa una vista de grid con 2 columnas.
            crossAxisCount: 2,
          ),
          tablet: ProjectsGridView( // Para tabletas, se ajusta la relación de aspecto de los elementos.
            childAspectRatio: 1.1,
          ),
          desktop: ProjectsGridView(), // Para escritorios, se usa la configuración por defecto.
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget { // Define la clase ProjectsGridView como StatelessWidget.
  const ProjectsGridView({ // Constructor de la clase ProjectsGridView.
    Key? key, // Recibe un parámetro opcional para la clave del widget.
    this.crossAxisCount = 3, // Número de columnas en el grid, por defecto es 3.
    this.childAspectRatio = 1.3, // Relación de aspecto de los elementos del grid, por defecto es 1.3.
  }) : super(key: key); // Inicializa el widget base con la clave proporcionada.

  final int crossAxisCount; // Variable para almacenar el número de columnas.
  final double childAspectRatio; // Variable para almacenar la relación de aspecto de los elementos.

  @override
  Widget build(BuildContext context) { // Método build que construye la interfaz de usuario.
    return GridView.builder( // Utiliza GridView.builder para construir un grid dinámicamente.
      shrinkWrap: true, // Hace que el grid no ocupe más espacio del necesario.
      physics: NeverScrollableScrollPhysics(), // Desactiva el desplazamiento del grid (ya que está dentro de un scrollable).
      itemCount: demo_projects.length, // Número de elementos en el grid (se obtiene de la lista demo_projects).
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( // Configura el grid con un número fijo de columnas.
        crossAxisCount: crossAxisCount, // Número de columnas que se pasa desde el constructor.
        childAspectRatio: childAspectRatio, // Relación de aspecto de los elementos, que también se pasa desde el constructor.
        crossAxisSpacing: defaultPadding, // Espacio entre los elementos del grid en el eje horizontal.
        mainAxisSpacing: defaultPadding, // Espacio entre los elementos del grid en el eje vertical.
      ),
      itemBuilder: (context, index) => ProjectCard( // Construye una tarjeta de proyecto para cada elemento en el grid.
        project: demo_projects[index], // Pasa el proyecto correspondiente del demo_projects a la tarjeta.
      ),
    );
  }
}
