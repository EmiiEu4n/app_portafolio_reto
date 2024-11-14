import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    super.key,
    required this.percentage, // Porcentaje de progreso para la animación (valor entre 0 y 1)
    required this.label, // Etiqueta que se muestra debajo del indicador
  });

  final double percentage; // Porcentaje que representa el progreso
  final String label; // Etiqueta que describe el progreso

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1, // Relación de aspecto para que el círculo sea perfecto (1:1)
          child: TweenAnimationBuilder(
            // Usa TweenAnimationBuilder para animar el valor del progreso
            tween: Tween<double>(begin: 0, end: percentage), // El progreso comienza en 0 y va hasta el porcentaje indicado
            duration: defaultDuration, // Duración de la animación, definida en constants.dart
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand, // Expande el Stack para llenar el espacio disponible
              children: [
                CircularProgressIndicator(
                  value: value, // Muestra el valor animado del progreso
                  color: primaryColor, // Color del progreso (definido en constants.dart)
                  backgroundColor: darkColor, // Color de fondo del indicador (definido en constants.dart)
                ),
                Center(
                  // Centra el texto dentro del círculo
                  child: Text(
                    (value * 100).toInt().toString() + "%", // Muestra el valor animado en porcentaje
                    style: Theme.of(context).textTheme.bodyMedium, // Estilo de texto para el porcentaje
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: defaultPadding / 2), // Espacio debajo del indicador circular
        Text(
          label, // Muestra la etiqueta proporcionada
          maxLines: 1, // Asegura que la etiqueta solo ocupe una línea
          overflow: TextOverflow.ellipsis, // Si el texto es demasiado largo, se corta con '...'
          style: Theme.of(context).textTheme.bodyMedium, // Estilo de texto para la etiqueta
        ),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key,
    required this.percentage, // Porcentaje de progreso para la animación (valor entre 0 y 1)
    required this.label, // Etiqueta que se muestra encima del indicador
  });

  final double percentage; // Porcentaje que representa el progreso
  final String label; // Etiqueta que describe el progreso

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding), // Espacio en la parte inferior del indicador lineal
      child: TweenAnimationBuilder(
        // Usa TweenAnimationBuilder para animar el valor del progreso
        tween: Tween<double>(begin: 0, end: percentage), // El progreso comienza en 0 y va hasta el porcentaje indicado
        duration: defaultDuration, // Duración de la animación, definida en constants.dart
        builder: (context, value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Deja espacios entre los elementos en el Row
              children: [
                Text(
                  label, // Muestra la etiqueta proporcionada
                  style: const TextStyle(color: Colors.white), // Estilo de texto para la etiqueta
                ),
                Text((value * 100).toInt().toString() + "%"), // Muestra el porcentaje animado
              ],
            ),
            const SizedBox(
                height: defaultPadding / 2), // Espacio entre la fila de texto y el indicador lineal
            LinearProgressIndicator(
              value: value, // Muestra el valor animado del progreso
              color: primaryColor, // Color del progreso (definido en constants.dart)
              backgroundColor: darkColor, // Color de fondo del indicador (definido en constants.dart)
            ),
          ],
        ),
      ),
    );
  }
}
