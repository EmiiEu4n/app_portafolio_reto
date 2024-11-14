import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value, // Valor final del contador
    this.text, // Texto adicional que se mostrará al lado del contador (opcional)
  }) : super(key: key);

  final int value; // El valor final que el contador animará hasta alcanzar
  final String? text; // Texto opcional que puede acompañar al contador

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      // Utiliza TweenAnimationBuilder para animar el contador desde 0 hasta el valor final 'value'
      tween: IntTween(begin: 0, end: value), // La animación va desde 0 hasta el valor proporcionado
      duration:
          defaultDuration, // Duración de la animación, definida en constants.dart
      builder: (context, value, child) => Text(
        // Constrye cada cuadro de la animación, donde 'value' es el valor animado
        "$value$text", // Muestra el valor animado y el texto adicional (si existe)
        style: Theme.of(context)
            .textTheme
            .titleLarge! // Usa el estilo de texto 'titleLarge' del tema actual
            .copyWith(color: primaryColor), // Cambia el color a 'primaryColor' definido en constants.dart
      ),
    );
  }
}
