import 'package:app_portafolio_reto/models/Recommendation.dart'; // Importa el modelo Recommendation desde la carpeta de modelos.
import 'package:flutter/material.dart'; // Importa la biblioteca de Flutter.

import '../../../constants.dart'; // Importa las constantes definidas en el archivo de constantes.

class RecommendationCard extends StatelessWidget { // Define la clase RecommendationCard como un StatelessWidget.
  const RecommendationCard({ // Constructor de la clase que recibe un objeto Recommendation.
    super.key, // Se utiliza para permitir la gestión de claves del widget.
    required this.recommendation, // Requiere un objeto Recommendation como parámetro.
  });

  final Recommendation recommendation; // Define la propiedad recommendation que almacenará el objeto Recommendation.

  @override
  Widget build(BuildContext context) { // Método build que construye la interfaz de usuario.
    return Container( // Contenedor que envuelve el contenido de la tarjeta de recomendación.
      width: 400, // Establece un ancho fijo para el contenedor.
      padding: EdgeInsets.all(defaultPadding), // Añade un relleno alrededor del contenido usando una constante definida en constantes.dart.
      color: secondaryColor, // Establece el color de fondo usando la constante secondaryColor.
      child: Column( // Utiliza un widget Column para organizar los elementos de la tarjeta de forma vertical.
        crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos al inicio del eje horizontal.
        children: [
          // Se agrega el nombre de la recomendación del objeto Recommendation.
          Text(
            recommendation.name!, // Muestra el nombre de la recomendación.
            style: Theme.of(context).textTheme.titleSmall, // Aplica el estilo del tema para el texto.
          ),
          Text(recommendation.source!), // Muestra la fuente de la recomendación.
          const SizedBox(height: defaultPadding), // Añade un espacio entre los textos con el tamaño de padding definido.
          Text(
            recommendation.text!, // Muestra el texto de la recomendación.
            maxLines: 4, // Limita el número de líneas a 4.
            overflow: TextOverflow.ellipsis, // Añade un "..." al final si el texto excede el límite de líneas.
            style: TextStyle(height: 1.5), // Establece la altura de línea del texto.
          ),
        ],
      ),
    );
  }
}
