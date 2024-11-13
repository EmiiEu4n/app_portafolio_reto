import 'package:app_portafolio_reto/models/Project.dart';
import 'package:app_portafolio_reto/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, //MIn 11:34
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: ProjectsGridView(
            CrossAxisCount: 1,
            childAspectRatio:
                1.7, //para que no salgan ayas amarillas y negras a la hora de dejar mas chica la pantalla
          ),
          mobileLarge: ProjectsGridView(CrossAxisCount: 2),
          tablet: ProjectsGridView(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectsGridView(),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    super.key,
    this.CrossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  final int CrossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length, //se muestras 9 cuadros
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:
            CrossAxisCount, //de 3 cuadros -> se cambio a CrossAxisCount
        childAspectRatio: childAspectRatio,
        crossAxisSpacing:
            defaultPadding, //se agrega espacio vertical entre los cuadros
        mainAxisSpacing:
            defaultPadding, //se agrega espaciado horizontal entre los cuadros
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
