import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(), // Línea divisora para separar secciones
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledges", // Título de la sección
            style: Theme.of(context).textTheme.bodyMedium, // Estilo de texto
          ),
        ),
        // Lista de conocimientos
        const KnowledgeText(text: "Flutter, Dart"),
        const KnowledgeText(text: "Stylus, Sass, Less"),
        const KnowledgeText(text: "Gulp, Webpack, Grunt"),
        const KnowledgeText(text: "GIT Knowledge"),
      ],
    );
  }
}


class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    super.key,
    required this.text, // El conocimiento o habilidad que se muestra
  });
  
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2), // Espaciado entre elementos
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"), // Ícono de verificación
          const SizedBox(width: defaultPadding / 2), // Espacio entre el ícono y el texto
          Text(text), // El texto que representa el conocimiento
        ],
      ),
    );
  }
}
