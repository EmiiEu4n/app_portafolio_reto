import 'package:app_portafolio_reto/constants.dart';
import 'package:flutter/material.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              // ahora cada uno toma el 50% sin el flex: 2
              Expanded(
                //ahora este toma el 75%
                //ahora este toma (2+7 = 9) entonces 2/9=0.22 significa 22%
                flex: 2,
                child: SideMenu(),
              ),
              Expanded(
                // este 7/9 = 0.78 significa 78% de ancho
                flex: 7,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
