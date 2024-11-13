import 'package:app_portafolio_reto/models/Project.dart';
import 'package:app_portafolio_reto/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context)
                ? 3
                : 4, //maximo de lineas que va a mostrar
            overflow: TextOverflow
                .ellipsis, //oara que aparezcan (...) de que aun tiene mas texto
            style: TextStyle(height: 1.5),
          ),
          Spacer(), //espaciado entre texto y boton
          TextButton(
            onPressed: () {},
            child: Text(
              "Read More>>",
              style: TextStyle(
                  color: primaryColor), //cambia el color del boton  //
            ),
          ),
        ],
      ),
    );
  }
}
