import 'package:app_portafolio_reto/screens/main/main_screen.dart'; // Importa el widget principal de la pantalla.
import 'package:flutter/material.dart'; // Importa la biblioteca de Flutter.

import 'components/home_banner.dart'; // Importa el componente del banner de inicio.
import 'components/my_projects.dart'; // Importa el componente para mostrar los proyectos.
import 'components/heighlights.dart'; // Importa el componente de información destacada.
import 'components/recommendation.dart'; // Importa el componente de recomendaciones.

class HomeScreen extends StatelessWidget { // Define la clase HomeScreen como un StatelessWidget.
  const HomeScreen({super.key}); // Constructor de la clase HomeScreen.

  @override
  Widget build(BuildContext context) { // Método build que construye la interfaz de usuario.
    return MainScreen( // Usa el widget MainScreen para estructurar la pantalla principal.
      children: [ // Lista de widgets que se mostrarán dentro del MainScreen.
        HomeBanner(), // Muestra el banner de inicio.
        HighLightsInfo(), // Muestra la sección de información destacada.
        MyProjects(), // Muestra la lista de proyectos.
        Recommendations(), // Muestra las recomendaciones.
      ],
    );
  }
}
