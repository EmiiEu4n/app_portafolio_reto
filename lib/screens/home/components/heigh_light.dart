import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeighLight extends StatelessWidget {
  const HeighLight({
    super.key,
    required this.counter, // Contador animado que se pasa como argumento
    this.label, // Etiqueta opcional
  });

  final Widget counter; // El contador que se mostrará (puede ser un widget animado)
  final String? label; // La etiqueta que se mostrará al lado del contador (puede ser nula)

  @override
  Widget build(BuildContext context) {
    return Row( // Usamos un Row para colocar el contador y la etiqueta horizontalmente
      children: [
        counter, // Muestra el widget que se pasa como 'counter'
        const SizedBox(
            width: defaultPadding / 2), // Agrega espacio entre el contador y la etiqueta (usando 'defaultPadding' dividido por 2)
        Text(label!, style: Theme.of(context).textTheme.titleSmall), // Muestra la etiqueta con un estilo de texto 'titleSmall'
      ],
    );
  }
}
