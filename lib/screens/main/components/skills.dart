import 'package:flutter/material.dart'; // Importa el paquete de Flutter para interfaces de usuario
import '../../../components/animated_progress_indicator.dart'; // Importa el componente de indicador de progreso animado
import '../../../constants.dart'; // Importa las constantes como colores y padding

// Clase que muestra las habilidades (Skills) con indicadores de progreso
class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos al inicio en la columna
      children: [
        const Divider(), // Línea divisoria para separar visualmente las secciones
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding), // Añade padding vertical
          child: Text(
            "Skils", // Título de la sección
            style: Theme.of(context).textTheme.bodyMedium, // Estilo de texto basado en el tema actual
          ),
        ),
        const Row(
          children: [
            // Primer indicador de progreso para Flutter
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.1, // Porcentaje de habilidad en Flutter
                label: "Flutter", // Etiqueta del indicador
              ),
            ),
            SizedBox(
              width: defaultPadding, // Espacio entre los indicadores
            ),
            // Segundo indicador de progreso para Django
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.2, // Porcentaje de habilidad en Django
                label: "Django", // Etiqueta del indicador
              ),
            ),
            SizedBox(
              width: defaultPadding, // Espacio entre los indicadores
            ),
            // Tercer indicador de progreso para Firebase
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.3, // Porcentaje de habilidad en Firebase
                label: "Firebase", // Etiqueta del indicador
              ),
            ),
          ],
        ),
      ],
    );
  }
}
