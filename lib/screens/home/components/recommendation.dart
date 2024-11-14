import 'package:app_portafolio_reto/models/Recommendation.dart'; // Importa el modelo Recommendation desde la carpeta de modelos.
import 'package:app_portafolio_reto/screens/home/components/recommendations_card.dart'; // Importa el widget RecommendationCard para mostrar las tarjetas de recomendación.
import 'package:flutter/material.dart'; // Importa la biblioteca de Flutter.

import '../../../constants.dart'; // Importa las constantes definidas en el archivo de constantes.

class Recommendations extends StatelessWidget { // Define la clase Recommendations como un StatelessWidget.
  const Recommendations({ // Constructor de la clase Recommendations.
    super.key, // Se utiliza para permitir la gestión de claves del widget.
  });

  @override
  Widget build(BuildContext context) { // Método build que construye la interfaz de usuario.
    return Padding( // Utiliza Padding para añadir espacio alrededor de los elementos.
      padding: const EdgeInsets.symmetric(vertical: defaultPadding), // Añade un relleno vertical utilizando una constante definida.
      child: Column( // Organiza los elementos de forma vertical.
        crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos al inicio del eje horizontal (justifica a la izquierda).
        children: [
          Text( // Muestra el título "Recommendations".
            "Recommendations",
            style: Theme.of(context).textTheme.titleLarge, // Aplica el estilo del tema para el título.
          ),
          const SizedBox(
              height: defaultPadding), // Añade un espacio entre el título y el siguiente contenido utilizando un tamaño de padding.
          SingleChildScrollView( // Habilita desplazamiento horizontal para el contenido.
            scrollDirection: Axis.horizontal, // Establece la dirección de desplazamiento a horizontal (como un carrusel).
            child: Row( // Organiza los elementos en una fila horizontal.
              children: List.generate( // Genera una lista de widgets (en este caso, tarjetas de recomendación).
                demo_recomendations.length, // La longitud de la lista demo_recomendations.
                (index) => Padding( // Para cada elemento de la lista, envuelve el widget en un Padding.
                  padding: const EdgeInsets.only(right: defaultPadding), // Añade un relleno a la derecha de cada tarjeta.
                  child: RecommendationCard( // Utiliza el widget RecommendationCard para mostrar la tarjeta de recomendación.
                    recommendation: demo_recomendations[index], // Pasa la recomendación actual a la tarjeta.
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
