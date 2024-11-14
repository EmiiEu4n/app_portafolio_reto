import 'package:app_portafolio_reto/constants.dart';
import 'package:flutter/material.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    super.key,
    this.title,
    this.text,
  });

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2), // Espaciado inferior
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espaciado entre los elementos
        children: [
          Text(
            title!, // Muestra el título (no puede ser nulo)
            style: const TextStyle(color: Colors.white), // Color blanco para el título
          ),
          Text(
            text!, // Muestra el texto (no puede ser nulo)
          )
        ],
      ),
    );
  }
}
