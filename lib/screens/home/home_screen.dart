import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_portafolio_reto/constants.dart';
import 'package:app_portafolio_reto/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

import '../../models/Project.dart';
import 'components/home_banner.dart';
import 'heighlights.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: demo_projects.length, //se muestras 9 cuadros
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //de 3 cuadros
            childAspectRatio: 1.3,
            crossAxisSpacing:
                defaultPadding, //se agrega espacio vertical entre los cuadros
            mainAxisSpacing:
                defaultPadding, //se agrega espaciado horizontal entre los cuadros
          ),
          itemBuilder: (context, index) => ProjectCard(
            project: demo_projects[index],
          ),
        ),
      ],
    );
  }
}

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
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            project.description!,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
