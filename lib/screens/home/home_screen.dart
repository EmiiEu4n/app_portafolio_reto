import 'package:app_portafolio_reto/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'heighlights.dart';
import 'recommendation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations(), //widget de columna
      ],
    );
  }
}
